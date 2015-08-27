//Andrew Theodorides, APCS, Block 3
int lights = 1;
void setup()
{
  size(512,512);
}
void draw()
{
  table();
  lamp();
  light();
}

//Creates the Darkness Effect 
void shadow()
{
  fill(0,0,0,lights);
  rect(0,0, 520, 520);
}

//Desk/Table
void table()
{
  fill(139,69,19);
  strokeWeight(10);
  //Desk Legs
  line(495,290,495,503);
  line(447,290,447,430);
  line(50,290,50,416);
  line(16,290,16,503);
  strokeWeight(2);
  //Desk Top
  quad(25,200,465,200,510,290,5,290);
}


//Desk Lamp
void lamp()
{
  fill(255,255,255); 
  rect(340,215,125,20,7); 
  strokeWeight(10);
  line(436,110,436,215);
  line(436,110,373,40);
  line(373,40,306,40);
  
  
  ellipse(435,110,15,15);
  ellipse(373,40,15,15);
  ellipse(306,40,20,20);
  
  
  if (lights == 1)
  {
    noStroke();
    fill(0,0,0);
    ellipse(306,85,18,18);
  }
  else {
    noStroke();
    fill(255,255,0);
    ellipse(306,85,18,18);
  }
  
  stroke(0,0,0);
  fill(255,255,255);
  strokeWeight(5);
  arc(306,80,50,50,PI,TWO_PI);
  line(280,82,330,82);
}

void light()
{
  if (lights == 1)
  {
    fill(102,102,102,225);
    rect(-5,-5,525,525);  
  }
  if (lights == 2)
  {
    background(0,102,102);
    table();
    lamp();
  }
 
}

void mousePressed()
{
   if (lights == 1)
   {
     lights = 2;
   }
   else
   {
     lights = 1;
   }
}
