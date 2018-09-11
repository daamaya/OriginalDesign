int bubbleA = 400;
int bubbleB = 400;
float bubbleC = 400;
int bubbleD = 400;
void setup()
{
  size(700,700);
}
void draw()
{
  room();
  cauldron();
  bubbles();
}
void bubbles()
{
  //cauldron();
  fill(0,255,0);
  ellipse(320,bubbleA,30,30); //these are bubbles coming out of a cauldron
  ellipse(370,bubbleB,30,30);
  ellipse(280,bubbleC,45,45);
  ellipse(400,bubbleD,25,25);
  bubbleA=bubbleA-3;
  bubbleB=bubbleB-4;
  bubbleC=bubbleC-1.5;
  bubbleD=bubbleD-2;
  if(bubbleA<0)
  {
    bubbleA=400;
  }
  if(bubbleB<0)
  {
    bubbleB=400;
  }
  if(bubbleC<100)
  {
    bubbleC=400;
  }
  if(bubbleD<60)
  {
    bubbleD=400;
  }
}
void cauldron()
{
  stroke(0);
  fill(60);
  ellipse(350,470,270,200);
  ellipse(350,400,250,100);
  fill(33,211,25);
  ellipse(350,400,220,70);
}
void room()
{
  wall();
  roomFloor();
}
void wall()
{
  fill(50,29,8);
  rect(0,0,700,450);//background
  fill(87,35,7);
  rect(55,95,180,210);//window frame
  fill(36,49,168);
  rect(60,100,170,200);//sky
  fill(255);
  ellipse(140,160,90,90);//moon
  noStroke();
  fill(36,49,168);
  ellipse(150,150,80,80);//moon cover
  stroke(0);
  fill(87,35,7);
  rect(55+90,100,5,200);
  rect(60,100+200/3,170,5);
  rect(60,100+(2*(200/3)),170,5);
}
void roomFloor()
{
  fill(30);
  rect(0,450,700,250);
}