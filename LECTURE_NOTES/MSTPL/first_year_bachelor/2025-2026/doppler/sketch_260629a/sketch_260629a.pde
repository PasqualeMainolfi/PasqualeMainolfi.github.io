
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
    float curr_r = this.curr_radius + this.x_center;
    if (curr_r > W * 2) { 
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


int capacity = 100;
SWave waves[];
int curr_size = 0;
float x_src = W / 2;
float y_src = H / 2;
float mstep = 10;
float freq = 100; // Hz

void setup() {
  size(600, 600);
  waves = new SWave[capacity];
}


void draw() {
  background(0);
  fill(255);
  circle(x_src, y_src, 10);
  
  if (curr_size < capacity) {
    waves[curr_size] = new SWave(x_src, y_src);
    curr_size += 1;
  }
  
  for (int i = 0; i < curr_size; i++) {
    if (waves[i].is_out) {
      waves[i].reset_wave(x_src, y_src);
    }
  }
  
  for (int i = 0; i < curr_size; i++) {
    //if (curr_size < capacity) {
      waves[i].update_radius();
    //}
  }
  
  for (int i = 0; i < curr_size; i++) {
    //if (curr_size < capacity) {
      waves[i].show_wave();
    //}
  }
  
  println(curr_size);
  
  
  delay((int) (1 / freq * 1000));
  
}

void keyPressed() {
  switch(keyCode) {
    case UP:
      y_src -= mstep;
      break;
    case DOWN:
      y_src += mstep;
      break;
    case LEFT:
      x_src -= mstep;
      break;
    case RIGHT:
      x_src += mstep;
      break;
  }
}
