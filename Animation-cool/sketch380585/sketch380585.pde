// Animation #1
// by Ilyas Shafigin
// Idea: http://flrngif.tumblr.com/post/141978472759

void setup() {
  size(640, 640);
  ellipseMode(RADIUS);
  colorMode(HSB, 100, 100, 100);
  noStroke();
}

void draw() {
  background(8);
  translate(width/2, height/2);
  
  int count = 36;
  for (int i = 0; i < count; i++) {
    float rotation = map(i, 0, count, 0, 2*PI);
    float phi = map(i, 0, count, 0, 4*PI);
    float rx = 200;
    float ry = rx*abs(cos(rotation)*0.5);
    float radius = 7;
    float h = map(i, 0, count, 0, 200)%100;
    float s = 90;
    float b = 70;
    
    pushMatrix();
    rotate(rotation);
    
    int smoothCount = 6;
    for (int j = 0; j < smoothCount; j++) {
      float deltaTheta = PI/150;
      float theta = radians(2.5*frameCount)+j*deltaTheta;
      float x = rx*cos(theta - phi);
      float y = ry*sin(theta - phi);
      float alpha = 100*sin(map(j, 0, smoothCount, 0, PI));
    
      fill(h, s, b, alpha);
      ellipse(x, y, radius, radius);
    }
    popMatrix();
  }
}