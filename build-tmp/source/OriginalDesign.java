import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {


int light = 200;
public void setup()
{
	int width = 512;
	int height = 512;
	size(width, height);
	//noLoop();
}
public void draw()
{
  //ellipse(width/2,height/2,70,70);
    //ellipse((width/2)-150,512,5,5);
  //ellipse((width/2)+150,512,5,5);
  //ellipse((width/2)-100,425,5,5);
  //ellipse((width/2)+100,425,5,5);
  shape();
  lights();
}

public void shape()
{
	rect(250, 150, 10, 350);
	quad((width/2)-150, 512, (width/2)+150 , 512, (width/2)+100, 425, (width/2)-100, 425);
 	
}


public void lights()
{
	
	fill(0,0,0,light);
	rect(0,0,530,530);

}

public void mousePressed()
{
	print(".....");
	light = 0;


}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
