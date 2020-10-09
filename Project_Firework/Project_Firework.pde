ArrayList<Shape> shapes= new ArrayList<Shape>();
int getRandomColor() {
  return color (random(120, 255), random (255), random (255));
}
float x;
float y;
float shapeSize;

void setup()
{
  size (800, 600);
  frameCount = 360;
}

void mousePressed() {
  for (int i = 0; i < 100; i++) {
    shapes.add(new Shape(mouseX, mouseY));
  }
}


void draw () {
  background(0);


  for (int i = shapes.size()-1; i >= 0; i--) {

    shapes.get(i).move();
    shapes.get(i).display();

    if (shapes.get(i).isOffScreen()) {
      shapes.remove(i);
    }
  }
}



class Shape {

  float x;
  float y;
  float xSpeed = random(-3, 3);
  float ySpeed = random(-3, 3);

  Shape (float x, float y) {
    this.x = x;
    this.y = y;
  }



  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  void display() {
    if (key == 'q') {

      pushMatrix();
      translate(x, y);
      beginShape();
      vertex(0/6, -50/6);
      vertex(14/6, -20/6);
      vertex(47/6, -15/6);
      vertex(23/6, 7/6);
      vertex(29/6, 40/6);
      vertex(0/6, 25/6);
      vertex(-29/6, 40/6);
      vertex(-23/6, 7/6);
      vertex(-47/6, -15/6);
      vertex(-14/6, -20/6);
      endShape(CLOSE);
      popMatrix();
    }

    if (key == 'w') {

      pushMatrix();
      translate(x, y);
      beginShape();
      vertex(0/4, -50/4);
      vertex(14/4, -20/4);
      vertex(47/4, -15/4);
      vertex(23/4, 7/4);
      vertex(29/4, 40/4);
      vertex(0/4, 25/4);
      vertex(-29/4, 40/4);
      vertex(-23/4, 7/4);
      vertex(-47/4, -15/4);
      vertex(-14/4, -20/4);
      endShape(CLOSE);
      popMatrix();
    }

    if (key == 'e') {
      pushMatrix();
      translate(x, y);
      beginShape();
      vertex(0/3, -50/3);
      vertex(14/3, -20/3);
      vertex(47/3, -15/3);
      vertex(23/3, 7/3);
      vertex(29/3, 40/3);
      vertex(0/3, 25/3);
      vertex(-29/3, 40/3);
      vertex(-23/3, 7/3);
      vertex(-47/3, -15/3);
      vertex(-14/3, -20/3);
      endShape(CLOSE);
      popMatrix();
    }

    if (key == 'r') {
      pushMatrix();
      translate(x, y);
      beginShape();
      vertex(0/2, -50/2);
      vertex(14/2, -20/2);
      vertex(47/2, -15/2);
      vertex(23/2, 7/2);
      vertex(29/2, 40/2);
      vertex(0/2, 25/2);
      vertex(-29/2, 40/2);
      vertex(-23/2, 7/2);
      vertex(-47/2, -15/2);
      vertex(-14/2, -20/2);
      endShape(CLOSE);
      popMatrix();
    }

    if (key == 'a') {
      ellipse(x, y, 10, 10);
    }

    if (key == 's') {
      ellipse(x, y, 15, 15);
    }

    if (key == 'd') {
      ellipse(x, y, 20, 20);
    }

    if (key == 'f') {
      ellipse(x, y, 30, 30);
    }

    if (key == 'z') {
      rect(x, y, 10, 10);
    }

    if (key == 'x') {
      rect(x, y, 15, 15);
    }

    if (key == 'c') {
      rect(x, y, 20, 20);
    }

    if (key == 'v') {
      rect(x, y, 30, 30);
    }




    strokeWeight (shapeSize);
    stroke (getRandomColor());

    strokeWeight (0);
    fill(getRandomColor());
    ellipse(0, 0, 1.5* shapeSize, 1.5 *shapeSize);
  }


  boolean isOffScreen() {
    return x < 0 || x > width || y < 0 || y > height;
  }
}
