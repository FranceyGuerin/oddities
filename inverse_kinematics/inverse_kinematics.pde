ArrayList<Bone> bones = new ArrayList<Bone>();

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);

  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(200, 40, 99);

  for (int i = 0; i < bones.size(); i++) {
    Bone b = bones.get(i);
    b.display();
  }
}

void mouseClicked() {
  PVector base = new PVector(mouseX, mouseY);
  int last_bone = bones.size() - 1;

  if (last_bone < 0) {
    bones.add(new Bone(base, base));
  } else {
    Bone b = bones.get(last_bone);
    bones.add(new Bone(b.tip, base));
  }
}
