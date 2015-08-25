
int light = 200;
void setup()
{
	int width = 512;
	int height = 512;
	size(width, height);
}
void draw()
{
  //ellipse(width/2,height/2,70,70);
  //ellipse((width/2)-150,512,5,5);
  //ellipse((width/2)+150,512,5,5);
  //ellipse((width/2)-100,425,5,5);
  //ellipse((width/2)+100,425,5,5);
  shape();
  lights();
}

void shape()
{
	rect(250, 150, 10, 350);
	quad((width/2)-150, 512, (width/2)+150 , 512, (width/2)+100, 425, (width/2)-100, 425); 	
}


void lights()
{
	
	fill(0,0,0,light);
	rect(0,0,530,530);

}

void mousePressed()
{
	light = 0;

}