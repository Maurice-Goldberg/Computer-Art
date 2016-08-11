void setup() {
  size(600, 600);
  smooth();
  frameRate(12);
}

void draw() {
  background(#ff007a);
  
  PFont mono;
  mono = createFont("PCMyungjo", 54);
  fill(#ff0fff);
  textFont(mono);
  text("SUNSPEAKER", 160, 312); 
  
  for(int i = 600; i > -20; i -= 20) {
    for(int j = 600; j > -20; j -= 20) {
      float q = i * random(4000);
      if(q%3 == 0) {
        stroke(450);
        drawEllipse(i, j, 233);
      }
      else if(q%3 == 1) {
        stroke(290);
        drawEllipse(i, j, 290);
      }
      else if(q%3 == 2) {
        stroke(340);
        drawEllipse(i, j, 360);
      }
    }
  }
  println(frameCount);
  saveFrame("Animation02/anim-####.png");
}

void drawEllipse(float x, float y, float r){
 fill(r, 0, 0);
 ellipse(x, y, 18, 50); 
}

void drawEllipse2(float x, float y, float r){
 fill(r);
 ellipse(x, y, 18, 50); 
}