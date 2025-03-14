double t[][]=new double[3][4];
float lambda1=1.2,lambda2=0.98;
void setup()
{
  size(400, 400);
  
  //  haromszog kirajzolasa
  t[0][0]=50;
  t[0][1]=50;
  t[0][2]=50;
  t[0][3]=350;
  t[1][0]=50;
  t[1][1]=350;
  t[1][2]=350;
  t[1][3]=350;
  t[2][0]=350;
  t[2][1]=350;
  t[2][2]=50;
  t[2][3]=50;
  
}

//  dda algorithm
void line2(int x0, int y0, int x1, int y1)
{
  int l=abs(x1-x0)>abs(y1-y0)?abs(x1-x0):abs(y1-y0);
  float dx=1.*(x1-x0)/l, dy=1.*(y1-y0)/l;
  point(x0, y0);
  float x=x0, y=y0;
  for (int i=0; i<l; i++)
  {
    x+=dx;
    y+=dy;
    point(x, y);
  }
}

void draw()
{
  background(255);
  for(int i=0;i<3;i++)
  line2((int)t[i][0], (int)t[i][1],(int)t[i][2],
  (int)t[i][3]);
}

void keyPressed()
{
    if(key==CODED)
    {
    if(keyCode==RIGHT)
    for(int i=0;i<3;i++)
      {t[i][0]+=1;t[i][2]+=1;}
    else if(keyCode==LEFT)
    for(int i=0;i<3;i++)
      {t[i][0]-=1;t[i][2]-=1;}
    else if(keyCode==UP)
    for(int i=0;i<3;i++)
      {t[i][1]-=1;t[i][3]-=1;}
    else if(keyCode==DOWN)
    for(int i=0;i<3;i++)
      {t[i][1]+=1;t[i][3]+=1;}
    }
    else if(key=='a')
    for(int i=0;i<3;i++)
      for(int j=0;j<4;j++)
      t[i][j]*=lambda1;
    else if(key=='s')
    for(int i=0;i<3;i++)
      for(int j=0;j<4;j++)
      t[i][j]*=lambda2;
    
}
