For this demo you will write a scipt that places circles randomly on the screen and them moves them to overlap slightly with the nearest circle. To start out, open bubbles_start.pde.

To start, we will draw a single circle. Inside the draw function, add the following: 

```java
ellipse(100,150,30,20);
```

This draws an ellipse to the screen (over and over again on top of itself) 100 pixels from the left, 150 pixels down with a width of 30 pixels and a height of 20 pixels. Just to see how lets write our own circle class. 

```java

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
	 return WRITE SOME CODE HERE TO RETURN THE DISTANCE TO THE OTHER CIRCLE
	 // you can get the x and y coordinates of the other circle with other.x and other.y
  }
  
  public void moveTo(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public void draw() {
     ellipse(x,y,radius*2,radius*2); 
  }  
}
```

Now lets define an array to store all our circles in so that every time we add a new one we can iterate through the array to find the closest one. You can define an array with:

```java
ArrayList<Circle> circles = new ArrayList<Circle>();
```

Alright lets add some random circles. In the draw loop put:

```java
float x = random(0,width);
float y = random(0,height);
float radius = random(10,25);
Circle c = new Circle(x,y,radius);
c.draw()
```

You should get lots of circles scattered all over the place. But if we want something we can cut out we want them to all touch each other so our creation doesn't fall apart. To do this we will move the newly created circle until it slightly overlaps the nearest existing one. Take out the c.draw() call and replace it with:

```java

if (circles.size() == 0) {
	//TODO move the circle c to the center of the screen (since there are no other circles there yet)
} else {
	Circle closest = null;
   float minDist = (width+height)*2;
	for (Circle other: circles) {
      float d = c.distance(other);
      if (d < minDist) {
        //TODO add code to update minimum distance and closest circle
      }
    }
    float angle = atan2(c.y - closest.y,c.x-closest.x);
    float r = (closest.radius+c.radius);
    c.moveTo(closest.x+r*cos(angle), closest.y+r*sin(angle));
}
delay(500);
c.draw();
circles.add(c);
``` 

Great now we should get a pattern where the circles just touch but we want to make the connections a bit stronger. Add an overlap variable and set it to some number between 0.5 and 0.9 and change the distance you want between the circles to:

```java
r = (closest.radius+c.radius)*overlap;
```

Thats it. Play with the code. Get a pattern you like. You could try adding other shapes or images or not accepting new circles who's starting point already overlaps with an existing one. 










