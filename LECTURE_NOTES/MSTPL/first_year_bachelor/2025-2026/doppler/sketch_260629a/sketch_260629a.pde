
float RADIUS_STEP = 10;
float W = 600;
float H = 600;


class SWave {
  
  float x_center, y_center, curr_radius;
  boolean is_out;
  
  SWave(float cx, float cy) {
    this.x_center = cx;
    this.y_center = cy;
    this.curr_radius = 0.0;
    this.is_out = false;
    
  }
  
  void update_radius() {
    if (this.curr_radius > (W / 2)) { 
      this.is_out = true; 
    }
    this.curr_radius += RADIUS_STEP;
  }
  
  void show_wave() {
    noFill();
    stroke(255);
    circle(this.x_center, this.y_center, this.curr_radius);
  }
  
  void reset_wave(float cx, float cy) {
    this.x_center = cx;
    this.y_center = cy;
    this.curr_radius = 0.0;
    this.is_out = false;
  }
  
  
}


int capacity = 1000;
SWave waves[];
int curr_size = 0;

void setup() {
  size(600, 600);
  waves = new SWave[capacity];
}


void draw() {
  background(0);
  fill(255);
  circle(mouseX, mouseY, 10);
  
  if (curr_size < capacity) {
    waves[curr_size] = new SWave(mouseX, mouseY);
    curr_size += 1;
  }
  
  for (int i = 0; i < curr_size; i++) {
    if (curr_size < capacity && waves[i].is_out) {
      waves[i].reset_wave(mouseX, mouseY);
    }
  }
  
  for (int i = 0; i < curr_size; i++) {
    if (curr_size < capacity) {
      waves[i].update_radius();
    }
  }
  
  for (int i = 0; i < curr_size; i++) {
    if (curr_size < capacity) {
      waves[i].show_wave();
    }
  }
  
  
  delay(20);
  
}
