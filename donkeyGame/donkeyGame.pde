
PImage donkey;
PImage tail;
import ddf.minim.*;
AudioSample woohooSound;
boolean playSound = true;       

void setup(){

  donkey = loadImage("donkey image.jpg");     
tail = loadImage("donkey image(tail).jpg");
  
  size(500, 500);
  donkey.resize(width,height);
  tail.resize(100, 100);  
  Minim minim = new Minim(this);    
  woohooSound = minim.loadSample("homer-woohoo.wav");
}
void draw (){
  
   background (donkey);

  image(tail, mouseX-10, mouseY-20);
  
  ellipse(399, 180, 50, 50);
  
}
void mousePressed(){
  

  
 if(dist(399, 180, mouseX, mouseY) < 50){
   print("  congrats u won the game");
    woohooSound.trigger();
     playSound = false;
textSize(24);
text("u win!",100,20);
 }
 
}
  