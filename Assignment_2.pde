PImage img;

void setup() {
  size(1000, 650, P3D);
  img = loadImage("chiaroscuro.jpg");
  img.resize(900, 0);
}


void draw() {
   background (0);
 strokeWeight(2);
 stroke(255);

  background(0);
  fill(#f1f1f1);
  noStroke();
  sphereDetail(3);
  float tiles = 250;
  float tileSize = width/tiles;
  push();
  translate(width/2,height/2);
  //rotateY(radians(frameCount));
  
 
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
       while (x <mouseX) {
         fill(#f1f1f1);
          //ellipseMode(CENTER);
        // ellipse(mouseX,mouseY,100,100);
        //ellipse (mouseX,mouseY,100,100);
         x= x + 1;

  }
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float b = map(brightness(c),0,255,1,0);
      float z = map(b,0,1,-150,150);
    
      push();
      translate(x*tileSize - width/2, y*tileSize - height/2, z);
      sphere(tileSize*b*0.8);
      pop();
      
    }
  }
  pop();
}
