float theta = 0;
float dtheta = PI/100;
int bights = 3;
int leads = 4;
int circleSize = 30;

String developerName = "YOURNAME";



void setup() {
  size(500,500);
  background(255);
  stroke(0);
  fill(0);
}

void draw() {
    translate(width/2.0,height/2.0);
    float r = width/2.5*cos(bights*theta/float(leads));
    float x = r*cos(theta);
    float y = r*sin(theta);
    ellipse(x,y,30,30);
    theta +=dtheta;
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

