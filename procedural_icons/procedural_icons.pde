int pixel_size = 20;
int pixel_count = 5;
boolean vertical_symmetry = true;
boolean horizontal_symmetry = true;
Icon icon = new Icon(pixel_size, pixel_count, vertical_symmetry, horizontal_symmetry);

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);

  rectMode(CENTER);
  noStroke();
  fill(265, 30, 99);
}

void draw() {
  background(125, 30, 99);
  pushMatrix();
  translate(width/2, height/2 );
  icon.display();
  popMatrix();
}

void keyPressed() {
  println("Pressed key: " + int(key) + ", keyCode: " + keyCode);

  // Spacebar
  if (key == 32) {
    println("Spacebar pressed");
    icon.update();
  }

  // V
  if (key == 118 || key == 86) {
    println("V key pressed");
    icon.vertical_symmetry = !icon.vertical_symmetry;
  }

  // H
  if (key == 72 || key == 104) {
    println("H key pressed");
    icon.horizontal_symmetry = !icon.horizontal_symmetry;
  }

  // Up arrow
  if (key == CODED) {
    if (keyCode == UP) {
      println("Up arrow pressed");
      icon.pixel_size += 10;
    }

    // Down arrow
    if (keyCode == DOWN) {
      println("Down arrow pressed");
      icon.pixel_size -= 10;
    }
  }
}
