class Dino{
    float x = 50;
    float y = 100;
    float j_length = 0;
    float limit;

    
    Dino(){
        x = 50;
    	y = 100;
    }
    
    void s_jump(){
    	j_length = 45;
    	limit = j_length/2;
    }
    
    void down(){
    	if (j_length >= limit) {
        	y -= 6;    
    	} else {
        	if (y <= 96)
     			y += 4;
     		else 
     			while (y < 100) {
         			y += 1;
         		}
    	}
    }

    void show(){
        fill(0, 0, 255);
        rect(x, y, 20, 50);
    }
}
