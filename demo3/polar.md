This sketch draws lets you draw pretty patterns in polar coordinates. Open up polar_start.pde.

We are going to create our pattern by moving a circle around on the screen. To start with lets just draw a circle.

In the draw loop put 

```java
translate(width/2.0,height/2.0); //moves the reference point to the center of the drawing
ellipse(0,0,30,30);
```

Great now lets make our circle move. Declare a variables theta and dtheta above your setup function

```java
float theta = 0;
float dtheta = PI/100;
```

and in the draw loop:

```java
float radius = 150;

// convert to polar coordinates
float x = radius*cos(theta);
float y = radius*sin(theta);

ellipse(x,y,30,30);
theta += dtheta
```

Yay, you just drew a circle with a circle ... Now to make things a bit more interesing, lets make the radius vary with theta. Add a couple more variables.
```java
int A = 4;
int B = 3;
```

and in the draw loop, change your radius to depend on theta. 

```
float radius = width/4.0 * cos(B*theta/float(A));
```

You should get a pretty pattern. Play around with the A, B, the size of the your circle, etc. When you get a pattern you like click s to save it as a bitmap. 


