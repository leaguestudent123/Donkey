PImage donkey;
PImage tail; 
void setup(){
  
  donkey = loadImage("donkey image.jpg");     
tail = loadImage("donkey image(tail).jpg");
  
  size(500, 500);
  donkey.resize(width,height);
  tail.resize(100, 100);  
}
void draw (){
  
   background (donkey);

  image(tail, mouseX-10, mouseY-20);
  
  rect(0, 0, 30, 30);
  
  
  
}
void mousePressed(){
  

  
 //dist(0, 0, mouseX, mouseY) < 30
 
}