void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  int numScalesX = 18;
  int numScalesY = 18; 
  int scaleWidth = width / numScalesX; 
  int scaleHeight = height / numScalesY;

  for (int i = -1; i < numScalesX; i++) {
    for (int j = -5; j < numScalesY; j++) {
      float x = i * scaleWidth + (j % 2) * scaleWidth / 2; 
      float y = j * scaleHeight; 

   
      float gradient = map(y, 0, height, 0, 255);
      fill(gradient, 150, 255 - gradient);

     
      drawCustomScale(x, y, scaleWidth, scaleHeight);
    }
  }
}

void drawCustomScale(float x, float y, int w, int h) {
  beginShape();
  curveVertex(x + 10, y + 10);
  curveVertex(x + 10, y + 10);
  curveVertex(x + 75, y + 50);
  curveVertex(x + 10, y + 90);
  curveVertex(x + 25, y + 50);
  curveVertex(x + 10, y + 10);
  curveVertex(x + 10, y + 10);
  endShape();
}

