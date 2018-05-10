public class Stone{
	float x;
    float y;
    float xspeed;
    
    Stone(){
    	x = 2000;
    	y = 100;
    	xspeed = 5;
    }
       
    void slide(){
        x = x - xspeed;
        if(x <= 0){
            x = random(600, 1500);
        }
    }
    
    void dead(){
        x = 1999;
        print("dead", "\n");
    }
    void show(){
       fill(255, 255, 255);
       rect(x, y, 20, 50);
	}
}
