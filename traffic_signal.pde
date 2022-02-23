int eSize = 50;
int x = 0;
boolean flg_r = false;
int f = 30;
int cnt = 0;
int state = 0;
int h_sig_car = 100;

void show_g()
{
  fill(0,255,0);
  ellipse(width/4, h_sig_car, eSize, eSize);
  fill(200,200,200);
  ellipse(2*width/4, h_sig_car, eSize, eSize);
  fill(200,200,200);
  ellipse(3*width/4, h_sig_car, eSize, eSize);
}
void show_y()
{
  fill(200,200,200);
  ellipse(width/4, h_sig_car, eSize, eSize);
  fill(255,255,100);
  ellipse(2*width/4, h_sig_car, eSize, eSize);
  fill(200,200,200);
  ellipse(3*width/4, h_sig_car, eSize, eSize);
}
void show_r()
{
  fill(200,200,200);
  ellipse(width/4, h_sig_car, eSize, eSize);
  fill(200,200,200);
  ellipse(2*width/4, h_sig_car, eSize, eSize);
  fill(255,0,0);
  ellipse(3*width/4, h_sig_car, eSize, eSize);
}

void setup() {
  size(400, 400);
  noStroke();
  frameRate(f);
//  smooth();
}
 
void draw() {
  background(255);
  switch(state%3)
  {
    case 0:
    {
      show_g();
      break;
    }
    case 1:
    {
      show_y();
      break;
    }
    case 2:
    {
      show_r();
      break;
    }
  }

  
  // 1sec counter
  cnt++;
  if(cnt>f)
  {
    cnt=0;
    // state
    state++;
    if(state>2)state=0;
    print(state);
  }

}
