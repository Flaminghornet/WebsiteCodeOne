/*
Jason Keck
5/15/25
Chris Jordan Sketch
*/


PImage wave;
PImage [] blue = new PImage [6];
PImage [] dark = new PImage [3];
PImage [] white = new PImage [4];
PImage yellow;

int rx = 100;
int ry = 200;

void setup(){
  size(1200, 800);
  wave = loadImage("wave.png");
  yellow = loadImage("yellow.png");
  
  for (int i=0; i<blue.length; i++){
    blue[i] = loadImage("blue" + i + ".png");
    blue[i].resize(int(blue[i].width * 0.25), int(blue[i].height * 0.25));
  }
   for (int i=0; i<dark.length; i++){
    dark[i] = loadImage("dark" + i + ".png");
    dark[i].resize(int(dark[i].width * 0.25), int(dark[i].height * 0.25));
  }
   for (int i=0; i<white.length; i++){
    white[i] = loadImage("white" + i + ".png");
    white[i].resize(int(white[i].width * 0.25), int(white[i].height * 0.25));
  }
    
  image(wave, 0, 0, width, height);
}

void draw(){
  imageMode(CENTER);
for (int i=0; i<120; i++){
 rx = int(random(width));
 ry = int(random(height));
 //light blue color
 if(get(rx, ry) == -11244652){
   push();
   translate(rx, ry);
   rotate(random(12));
   scale(random(0.75, 1.25));
   image(blue[int(random(blue.length))], 0, 0);
   pop(); 
    }
    //for dark blue
  if(get(rx, ry) == -16371622){
   push();
   translate(rx, ry);
   rotate(random(12));
   scale(random(0.75, 1.25));
   image(dark[int(random(dark.length))], 0, 0);
   pop(); 
    }
    //for white
      if(get(rx, ry) == -919815){
   push();
   translate(rx, ry);
   rotate(random(12));
   scale(random(0.75, 1.25));
   image(white[int(random(white.length))], 0, 0);
   pop(); 
    }
       if(get(rx, ry) == -2179741){
   push();
   translate(rx, ry);
   rotate(random(12));
   scale(random(0.005, .025));
   image(yellow, 0, 0);
   pop(); 
    }
  }

}

void mousePressed(){
  println(get(mouseX, mouseY));
  /*
  dark blue = -16371622
  light blue = -11244652
  white = -919815
  */
  
  
}
