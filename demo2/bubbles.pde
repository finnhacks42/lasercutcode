
float prob = .2f;
int widthPixels = 500;
int heightPixels = 500;
float overlap = 0.9;
String developerName="YOURNAME";

ArrayList<Circle> circles = new ArrayList<Circle>();

class Circle {
  private float x = 0;
  private float y = 0;
  private float radius;
  
  public Circle(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  public float distance(Circle other) {
    return sqrt(pow(this.x-other.x,2)+pow(this.y - other.y,2));
  }
  
  public void moveTo(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public void draw() {
     ellipse(x,y,radius*2,radius*2); 
  } 
  
  
}

PShape circle;
void setup() {
  size(widthPixels,heightPixels);
  background(255);
  fill(0);

  
}

void draw() {
  float x = random(0,width);
  float y = random(0,height);
  float radius = random(10,25);
  Circle c = new Circle(x,y,radius);
  
  if (circles.size() == 0) {
    c.moveTo(width/2.0,height/2.0);
  } else {
    Circle closest = null;
    float minDist = (width+height)*2;
    for (Circle other: circles) {
      float d = c.distance(other);
      if (d < minDist) {
        minDist = d;
        closest = other;
      }
    }
    float angle = atan2(c.y - closest.y,c.x-closest.x);
    float r = (closest.radius+c.radius)*overlap;
    c.moveTo(closest.x+r*cos(angle), closest.y+r*sin(angle));
  }
  delay(500);
  
  //now find the closest one.
  c.draw();
  circles.add(c);  
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
