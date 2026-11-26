final float RADIUS_STEP = 2;
final int W = 600;
final int H = 600;

final int CAPACITY = 100;

SWave[] waves = new SWave[CAPACITY];

float xSrc = W / 2.0;
float ySrc = H / 2.0;

float movementStep = 5;

float frequency = 5;

int nextWave = 0;
int lastWaveTime = 0;
boolean upKey;
boolean downKey;
boolean leftKey;
boolean rightKey;


class SWave {

  float xCenter;
  float yCenter;
  float radius;
  boolean active;

  SWave() {
    active = false;
  }

  void start(float cx, float cy) {
      xCenter = cx;
      yCenter = cy;
      radius = 0;
      active = true;
  }
  
  void update() {
      if (!active) return;
  
      radius += RADIUS_STEP;
  
      float maxXDistance = max(xCenter, width - xCenter);
      float maxYDistance = max(yCenter, height - yCenter);
      float maxDistance = sqrt(maxXDistance * maxXDistance + maxYDistance * maxYDistance);
  
      if (radius > maxDistance) active = false;
  }
  
  void show() {
      if (!active) return;
  
      noFill();
      stroke(255);
  
      circle(xCenter, yCenter, radius * 2);
    }
}

void setup() {
    size(600, 600);
    for (int i = 0; i < waves.length; i++) {
        waves[i] = new SWave();
    }
}


void draw() {
    background(0);
    drawSource();
    generateWave();
    updateSource();
    for (int i = 0; i < waves.length; i++) {
        waves[i].update();
        waves[i].show();
    }
}


void drawSource() {
    fill(255);
    noStroke();
    circle(xSrc, ySrc, 10);
}


void generateWave() {
    float interval = 1000.0 / frequency;

    if (millis() - lastWaveTime >= interval) {
        waves[nextWave].start(xSrc, ySrc);

        nextWave = (nextWave + 1) % CAPACITY;
        lastWaveTime = millis();
    }
}


void keyPressed() {
  switch(keyCode) {
  case UP:
      upKey = true;
      break;
  case DOWN:
      downKey = true;
      break;
  case LEFT:
      leftKey = true;
      break;
  case RIGHT:
      rightKey = true;
      break;
  }
}

void keyReleased() {
    switch(keyCode) {
    case UP:
        upKey = false;
        break;
    case DOWN:
        downKey = false;
        break;
    case LEFT:
        leftKey = false;
        break;
    case RIGHT:
        rightKey = false;
        break;
    }
}

void updateSource() {
    float dx = 0;
    float dy = 0;

    if (upKey)    dy -= 1;
    if (downKey)  dy += 1;
    if (leftKey)  dx -= 1;
    if (rightKey) dx += 1;

    float length = sqrt(dx * dx + dy * dy);
    if (length > 0) {
        dx /= length;
        dy /= length;

        float currVel = min(RADIUS_STEP, movementStep);
        xSrc += dx * currVel;
        ySrc += dy * currVel;
    }

}
