class Icon {
  int pixel_size, pixel_count;
  Icon (int ps, int pc) {
    pixel_size = ps;
    pixel_count = pc;
  }

  void display() {
  for (int i = 0; i < pixel_count; i++) {
    for (int j = 0; j < pixel_count; j++) {
      if (random(1) >= 0.5) {
        rect(i*pixel_size, j*pixel_size, pixel_size, pixel_size);
          rect(i*-pixel_size, j*pixel_size, pixel_size, pixel_size);
      }
    }
  }
  }
}
