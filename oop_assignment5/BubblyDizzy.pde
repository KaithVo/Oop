class Bubble {
  float x, y;
  float diameter;
  float xSpeed, ySpeed;

  Bubble(float x, float y) {
    this.x = x;
    this.y = y;
    diameter = random(20, 50);
    xSpeed = random(-2, 2);
    ySpeed = random(-2, 2);
  }

  void display() {
    noStroke();
    fill(120,121,124, 150); // gray bubbles
    ellipse(x, y, diameter, diameter);
  }

  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  void checkEdges() {
    if (x > width || x < 0) {
      xSpeed *= -1;
    }
    if (y > height || y < 0) {
      ySpeed *= -1;
    }
  }
}
