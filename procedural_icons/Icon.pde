class Icon {
  int pixel_size, pixel_count;
  boolean [][] pixel_locations;

  Icon (int ps, int pc) {
    pixel_size = ps;
    pixel_count = pc;
    pixel_locations = new boolean[pixel_count][pixel_count];

    update();
  }

  void update() {
    for (int i = 0; i < pixel_count; i++) {
      for (int j = 0; j < pixel_count; j++) {
        if (random(1) >= 0.5) {
          pixel_locations[i][j] = true;
        } else {
          pixel_locations[i][j] = false;
        }
      }
    }
  }

  void display() {
    for (int i = 0; i < pixel_count; i++) {
      for (int j = 0; j < pixel_count; j++) {
        if (pixel_locations[i][j] == true) {
          rect(i*pixel_size, j*pixel_size, pixel_size, pixel_size);
          rect(i*-pixel_size, j*pixel_size, pixel_size, pixel_size);
        }
      }
    }
  }
}
