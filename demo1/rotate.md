We are going to create a program that draws an image on the screen and rotates it. 

Start Processing and open the rotate_start.pde script (demo1/rotate_start/rotate_start.pde)

This script contains the outline of a Processing program and you will fill it in to actually make it do stuff.

If you click the little play button on the top left of the processing window, a tiny grey window should pop up. This is your 'drawing' but you haven't told you what to draw yet.

The starting script contains 3 functions. A function is just a chunck of code that we have given a name. Whenever we want that code to run we can 'call the function'. These 3 functions are actually special functions in the Processing language, they get called for you when specific things happen. There are also some lines that start with //. These are comments. They don't do anything, they just describe what the code is doing so its easier to understand. Its always a good idea to put comments in your code, even when you are an experienced programmer. It helps you remember what you did and lets other people understand your code. So lets do some coding. 

At the top of the script, before any of the functions, add the following code (you can copy paste)

```java 
int heightPixels = 500; 
int widthPixels = 500; 
```

You have just declared your first variables! The first line says you want to create an interger (whole number like 1,2,3 etc), give it the name heightPixels and set its value to 500. Then the ; tell the computer that you have finished that line. 

Now inside the setup function type:

```java
size(widthPixels,heightPixels);
```

Now run your code by clicking the play button again. You should get a bigger window popping up. When you click play, Processing calls the setup function for you. Inside the setup function is the call you added to the 'size' function which sets the size of the window. 

Alright, now lets get some drawing happening.



Inside the setup function under the size line add,

```java
background(255); //set the background color to white
fill(0); // set the fill paint to black
stroke(0); // set the stroke color to black;
```

Inside the draw function, put

```java
rect(0,0,100,10);
```

This calls the rect function that draws a rectangle to the screen. There are 4 'arguaments' to the function. The first 0 says how many pixels from the left of the screen you want the rectangle to start, the second one says how many pixels from the top you want it to be. The third says how wide you want it to be (in pixels) and the last how high it should be.

Run your code and see what happens. 

After setup is run, the draw function gets called over and over again until till you script stops. The rectangle gets drawn over and over but always on top if itself so you can't tell.

Now lets make our rectangle rotate. Above the setup function with your other variables, define an integer theta to hold how far it has rotated.

```java
int theta = 0;
```

now replace the draw function with the following code 

```java

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
    rect(0,0,100,10);
  
    // increase the angle theta - this means the rectange will be drawn rotated to a new angle the next time through the draw loop
    theta += 60;

    // call this when you have finished your transformations for this loop
    popMatrix();
  }
```

Ok we did quite a lot here. First we are making things move by applying transformations. Instead of trying to move the rectangle itself you can imagine we are moving the 'paper' behind it. Each time the draw function gets called, the value of the variable we named theta gets increased by 60. Once it gets to 365 (a full circle) we stop changing anything. 

Now to draw something more interesting than a rectangle. Where your variables are defined, put 

```
PImage img;
```

Then in the setup function:

```java
img = loadImage("bird3.png");
```

and in the draw function replace the call to rect with:

```java
image(img, 0, 0,100,100);
```

play with the 4th and 5th arguament to the image function and with the amount you increase theta by each time through the loop and see what happens. Try doing it for a different image (jpg or png should work). 

Once you have something you like we need to add some code to save it as an image. We'll write some code to do that when you press the 's' key.Declare a String variable called developerName and set it to your name:

```java
String developerName="YourName";
``` 

At the bottom of your code is the function called keyTyped. Processing calls this for you whenenver you type a key. Inside this function put:

```java
int keyInt = int(key); // gets an integer telling you which key was pressed
  if (keyInt == 115) { //115 is the 's' key
    String name = developerName+hour()+minute()+second();
    saveFrame(name);
    println("Saved as "+name);
  }
```

Run your code. Type the 's' key and send you bitmap image to me for tracing/cutting.

















