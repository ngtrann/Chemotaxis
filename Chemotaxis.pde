Water[] su;
//declare bacteria variables here   
void setup()   
{ 
  size(400, 400);
  su = new Water[20];
  for (int i = 0; i < su.length; i++) {
    su[i] = new Water();
  }
}   
void draw() 
{   
  background (114, 146, 209);
  for (int i = 0; i < su.length; i++) {
    su[i].show();
    su[i].walk();
  }
}  
class Water    
{     
  int myX, myY, myColor, myColor2;
  Water()
  {
    myX = (int)(Math.random()*390);
    myY = (int)(Math.random()*390);
    myColor = color(255, 0, 0);
    myColor2 = color(255);
  }

  void walk() {
    if (mouseX>myX) {
      myX = myX + (int)(Math.random()*6)-1; 
  }
    else if (myX>mouseX) {
      myX = myX + (int)(Math.random()*6)-4; 
  }
    else {
      myX = myX + (int)(Math.random()*5)-3;
  } 
      
    if (mouseY>myY) {
      myY = myY + (int)(Math.random()*6); 
    }
    else if (myY > mouseY) {
      myY = myY + (int)(Math.random()*6)-4; 
    }
    else {
      myY = myY + (int)(Math.random()*5)-3; 
    }
  }

  void show() {
    strokeWeight(2);
    stroke(188, 199, 216);
    fill(myColor2);
    ellipse(myX+12, myY+10, 18, 18);
    ellipse(myX-12, myY+10, 18, 18);
    stroke(149, 5, 5);
    fill(myColor);
    ellipse(myX, myY, 30, 30);
  }
}   
