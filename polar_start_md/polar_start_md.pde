
String developerName = "YOURNAME";

// this function gets called once when you start your script. 
// it contains code that sets how your drawing should look at the start 
void setup() {
  size(500,500);
  background(255);
  stroke(0);
  fill(0);
} 

// this function gets called over and over again until you stop the script
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
