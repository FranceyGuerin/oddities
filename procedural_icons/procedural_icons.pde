int pixel_size = 20;
int pixel_count = 5;
Icon icon = new Icon(pixel_size, pixel_count);

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);

  rectMode(CENTER);
  noStroke();
  fill(265, 50, 99);
}

void draw() {
  background(125, 30, 99);
  pushMatrix();
  translate(width/2, height/2 - icon.pixel_size*icon.pixel_count/2);
  icon.display();
  popMatrix();
}

void keyPressed() {
  println("Pressed key: " + int(key) + ", keyCode: " + keyCode);
  if (key == 32) {
    icon.update();
    println("Spacebar pressed");
  }

  if (key == CODED) {
    if (keyCode == UP) {
      println("Up arrow pressed");
      icon.pixel_size += 10;
    }

    if (keyCode == DOWN) {
      println("Down arrow pressed");
      icon.pixel_size -= 10;
    }
  }
}
