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
  translate(width/2, height/2);
  icon(20, 4);
  popMatrix();
  noLoop();
}

void icon(int pixel_size, int pixel_count) {
  for (int i = 0; i < pixel_count; i++) {
    for (int j = 0; j < pixel_count; j++) {
      if (random(1) >= 0.5) {
        rect(i*pixel_size, j*pixel_size, pixel_size, pixel_size);
          rect(i*-pixel_size, j*pixel_size, pixel_size, pixel_size);
      }
    }
  }
}
