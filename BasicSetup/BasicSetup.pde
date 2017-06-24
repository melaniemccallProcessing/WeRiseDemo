void setup() {
  size(500,500);
}

void draw(){
  //play with these RGB values to get different background color
  //background(200,20,10);
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}