



PShape alien, head, body;

int x =50;

int y =15;

void setup() {
  size(1000, 1000);

  // Create the shape group
  alien = createShape(GROUP);

  // Make two shapes
  ellipseMode(CORNER);
  head = createShape(ELLIPSE, -25, 0, 50, 50);
  head.setFill(color(255));
  body = createShape(ELLIPSE, -25, 46, 55, 55);
  body.setFill(color(0));

  // Add the two "child" shapes to the parent group
  alien.addChild(body);
  alien.addChild(head);
}

void draw() {
  background(204);
  x=x+1;
  y=y+1;
  translate(x, y);
  shape(alien); // Draw the group
}
