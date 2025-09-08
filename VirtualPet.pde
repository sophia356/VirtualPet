import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int rButton = 0;

void setup(){
  size(400,400);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}

void draw(){
  background(0,0,0);
  int y = arduino.analogRead(5);
  background(3*y,3*y,3*y,3*y);
  fill(247,198,107);
  ellipse(200,200,200,200);
  fill(0,0,0);
  ellipse(160,160,40,40);
  ellipse(240,160,40,40);
  fill(255-y,y,y);
  ellipse(163,165,15,15);
  ellipse(240,165,15,15);
  fill(0,0,0);
  arc(200,240,50,50,radians(225),radians(315));
  fill(247,198,107);
  arc(173,235,50,50,radians(10),radians(120));
  arc(224,235,50,50,radians(50),radians(170));
  fill(247,198,107);
  rButton = arduino.analogRead(1);
  if(rButton > 500) {
    rotate(radians(20));
    ellipse(160,50,40,200);
    rotate(radians(-40));
    ellipse(220,190,40,200);
  }else{
    rotate(radians(20));
    ellipse(160,160,40,200);
    rotate(radians(-40));
    ellipse(220,300,40,200);
}
}
