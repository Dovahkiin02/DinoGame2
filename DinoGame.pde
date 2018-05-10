import controlP5.*;
ControlP5 controlP5;
Textarea Output;
Println console;
Dino d;
Stone s1;
Stone s2;
Score score;


static class Score{
    static int score;
    Score(){
        score = 0;
    }
    
    void add(){
        score++;
        //print("Dein Score ist: ",  score, "\n");
        println("Dein Score ist: ", score);
    }
    
    void dead(){
        score = 0;
    }
}


boolean dead(){
    float y = d.y;
    float x1 = s1.x;
    float x2 = s2.x;
    if(((x1 > 50 &&  x1 < 70) || (x2 > 50 &&  x2 < 70)) && y > 50){
        return true;
    }
    return false;
}


void setup() {
    controlP5 = new ControlP5(this);
    size(600, 150);
    Output=controlP5.addTextarea("Output")
    .setPosition(500, 0)
      .setSize(150, 90)
        .setLineHeight(40)
          .setColorBackground(color(200, 200, 200))
            .setColorForeground(color(200, 200, 200))
              .scroll(1)
                .hideScrollbar();
   console = controlP5.addConsole(Output);
    s1 = new Stone();
    s2 = new Stone();
    d = new Dino();
    score = new Score();
}


void draw() {
    background(200, 200, 200);
	s1.slide();
	s1.show();
	s2.slide();
    s2.show();
    //print("y: ", d.y, "\n");
    //print("length: ", d.j_length, "\n");
	if ((d.j_length <= 0.0) && (d.y == 100.0)) {
		if (keyPressed == true) {
			if (keyCode == UP) {
				d.s_jump();
			}
		}
	} else {
		d.j_length -= 1;
    	d.down();
	}
	d.show();
	if(dead()){
    	s1.dead();
    	s2.dead();
    	score.dead();
    }
    else{
        score.add();
    }
}
