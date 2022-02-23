int c_frame_rate = 30;
int interval_cnt = 0;
int state = 0;
int c_state_max = 3;
int c_sig_car_h = 100;
int c_sig_car_size = 50;
int c_sig_human_w = 80;
int c_sig_human_h = 200;
int c_sig_human_h_diff = 10;

void show_sig_car_g()
{
  fill(0,255,0);
  ellipse(width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
  fill(200,200,200);
  ellipse(2*width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
  fill(200,200,200);
  ellipse(3*width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
}
void show_sig_car_y()
{
  fill(200,200,200);
  ellipse(width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
  fill(255,255,100);
  ellipse(2*width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
  fill(200,200,200);
  ellipse(3*width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
}
void show_sig_car_r()
{
  fill(200,200,200);
  ellipse(width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
  fill(200,200,200);
  ellipse(2*width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
  fill(255,0,0);
  ellipse(3*width/4, c_sig_car_h, c_sig_car_size, c_sig_car_size);
}
void show_sig_human_g()
{
  fill(200,200,200);
  rect(c_sig_human_w, c_sig_human_h, c_sig_car_size, c_sig_car_size);
  fill(200,200,200);
  rect(c_sig_human_w, c_sig_human_h+c_sig_human_h_diff+c_sig_car_size, c_sig_car_size, c_sig_car_size);
}
void show_sig_human_r()
{
  fill(255,0,0);
  rect(c_sig_human_w, c_sig_human_h, c_sig_car_size, c_sig_car_size);
  fill(200,200,200);
  rect(c_sig_human_w, c_sig_human_h+c_sig_human_h_diff+c_sig_car_size, c_sig_car_size, c_sig_car_size);
}
void show_sig_human_b()
{
  fill(200,200,200);
  rect(c_sig_human_w, c_sig_human_h, c_sig_car_size, c_sig_car_size);
  fill(0,255,0);
  rect(c_sig_human_w, c_sig_human_h+c_sig_human_h_diff+c_sig_car_size, c_sig_car_size, c_sig_car_size);
}

void setup() {
  size(400, 400);
  noStroke();
  frameRate(c_frame_rate);
  smooth();
}
 
void draw() {
  background(255);
  show_sig_human_b();
  switch(state)
  {
    case 0:
    {
      show_sig_car_g();
      show_sig_human_r();
      break;
    }
    case 1:
    {
      show_sig_car_y();
      show_sig_human_r();
      break;
    }
    case 2:
    {
      show_sig_car_r();
      show_sig_human_b();
      break;
    }
  }
  
  // 1sec counter
  interval_cnt++;
  if(interval_cnt>c_frame_rate)
  {
    interval_cnt=0;
    // state
    state++;
    if(state>c_state_max-1)state=0;
    print(state);
  }

}
