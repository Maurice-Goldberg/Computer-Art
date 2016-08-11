float x1 = 30;
float y1 = 30;
float speedx1 = 2;
float speedy1 = 2;

float x2 = 570;
float y2 = 30;
float speedx2 = -2;
float speedy2 = 2;

void setup() {
  size(600, 600);
  smooth();
  background(0);
}

void draw() {
  for(int i = 1; i<10; i++) {
    ellipse(x1+i, y1, 50*i, 50/i);
    x1 = x1 + speedx1*i;
    y1 = y1 + speedy1*i;
  }
  for(int i = 1; i<10; i++) {
    ellipse(x2, y2, 50*i, 50/i);
    x2 = x2 + speedx2*i;
    y2 = y2 + speedy2*i;
  }
}