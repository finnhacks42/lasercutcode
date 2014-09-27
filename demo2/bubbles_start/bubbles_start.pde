// VARIABLES ARE DECLARED HERE
int widthPixels = 500;
int heightPixels = 500;
String developerName="YOURNAME";


// INITIALIZE OUR WINDOW WITH A STARTING SIZE OF 500x500 pixels a background color of white and a fill color off black
void setup() {
  size(widthPixels,heightPixels);
  background(255);  
  fill(0);
}

// THE DRAW LOOP. GETS CALLED REPEATEDLY AFTER SETUP UNTIL YOU STOP THE SCRIPT. 
void draw() {
  
  
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
