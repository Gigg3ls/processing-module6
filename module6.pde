final color WHITE = 255;

int tileSize = 50;
int rectOffSet = tileSize / 2;
int tileX;
int tileY;

void setup() {
  size(400, 400);
  background(WHITE);
  strokeWeight(3);
  rectMode(CENTER);
  drawTileLine();
}

void drawRect(float x, float y, float rectSize) {
  fill(getRandomColor());
  rect(x, y, rectSize, rectSize);
}

void drawTile(float x, float y, float tileSize) {
  while (tileSize > 0) {
    drawRect(x, y, tileSize);
    tileSize -= 10;
  }
}

void drawTileRow(float y) {
  tileX = rectOffSet;
  while (tileX < width) {
    drawTile(tileX, y, tileSize);
    tileX += tileSize;
  }
}

void drawTileLine() {
  tileY = rectOffSet;
  while (tileY < height) {
    drawTileRow(tileY);
    tileY += tileSize; 
  }
}

color getRandomColor(){
  return color(random(255), random(255), random(255));
}
