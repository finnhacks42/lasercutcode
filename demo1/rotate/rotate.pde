// This script draws a rectangle to the screen and rotates it.


// in this section of code we declare varialbes

int heightPixels = 500; // the height of the drawing in pixels
int widthPixels = 500; // the width of the drawing in pixels
int theta = 0; // the angle to draw the rectangle at
PImage img;
String developerName = "YOURNAMEHERE";

// this function gets called once when you start your script. 
// it contains code that sets how your drawing should look at the start 
void setup() { 
  size(widthPixels, heightPixels); // sets the size in pixels of your drawing
  background(255); //set the background color to white
  fill(0); // set the fill paint to black
  stroke(0); // set the stroke color to black;
  img = loadImage("bird3.png");
}


// this function gets called over and over again until you stop the script
void draw() {

  if (theta < 365) {
  // call this function before you want to make a set of transformations to your drawing 
    pushMatrix(); 
  
    // applies a translation to your drawing, 
    // if you imagine your drawing as a piece of paper with a grid layed over it, then this corresponds to shifting the grid so its corner is now in the middle of the paper
    translate(widthPixels/2.0, heightPixels/2.0); 
  
    // applies a rotation to your drawing - imagine your are rotating the grid by the specified number of degrees
    rotate(radians(theta));
  
    // draws a rectangle (relative to the grid) 
    //rect(0,0,100,10);
    //drawRobot();
    image(img, 0, 0,100,100);
    // increase the angle theta - this means the rectange will be drawn rotated to a new angle the next time through the draw loop
    theta += 60;
    // call this when you have finished your transformations for this loop
    popMatrix();
  }
}

/*** This function is called when you type a key (with the drawing window in focus).
If the key was an 's' it will save what's on your drawing window to an image. ***/
void keyTyped() {
  int keyInt = int(key); // gets an integer telling you which key was pressed
  if (keyInt == 115) { //115 is the 's' key
    String name = developerName+hour()+minute()+second()+".png";
    saveFrame(name);
    println("Saved as "+name);
  }
}




