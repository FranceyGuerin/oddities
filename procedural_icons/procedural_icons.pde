int pixel_size = 20;
int pixel_count = 5;

void setup() {
  size(500, 500);

  colorMode(HSB, 360, 100, 100);

  rectMode(CENTER);
  noStroke();
  fill(265, 50, 99);
}

void draw() {
  background(125, 30, 99);
  pushMatrix();
  translate(width/2, height/2 - pixel_size*pixel_count/2);
  Icon icon_one = new Icon(pixel_size, pixel_count);
  icon_one.display();
  popMatrix();
  noLoop();
}
