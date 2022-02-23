int c_frame_rate = 30;
int interval_cnt = 0;
int state = 0;
int c_sig_car_h = 100;
int c_sig_car_size = 50;


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

void setup() {
  size(400, 400);
  noStroke();
  frameRate(c_frame_rate);
  smooth();
}
 
void draw() {
  background(255);
  switch(state%3)
  {
    case 0:
    {
      show_sig_car_g();
      break;
    }
    case 1:
    {
      show_sig_car_y();
      break;
    }
    case 2:
    {
      show_sig_car_r();
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
    if(state>2)state=0;
    print(state);
  }

}
