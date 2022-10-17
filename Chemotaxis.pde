Water su;
 //declare bacteria variables here   
 void setup()   
 { 
   size(400,400);
   background (114,146,209);
   su = new Water();
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   //move and show the bacteria   
 }  
 class Water    
 {     
   int myX, myY, myColor, myColor2;
   Water()
   {
     myX = myX + (int)(Math.random()*7)-3;
     myColor = color(255);
     myColor2 = color(255,255,255);
   }
 }    
