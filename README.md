lasercutcode
============

### Introduction


The goal of this workshop is to create a design in code which you can then cut out of wood, acrylic or card on the laser cutter. We will use the Processing language, which is essentially Java with some additional libraries and an IDE designed to make it easy draw to (and get input from) the screen.. You will write code to produce a black and white bitmap image.  Then you will then use a vector drawing package to transform your bitmap into a vector drawing that the laser cutter can cut. Your final piece will be whatever is black. The white bits will be cut away. 

A bitmap image is just a big table of numbers which specify the color of each tiny sqaure of your image. A vector image contains a set of paths, or essentially equations that specify where the lines go. The laser cutter takes a vector image(in .dxf format) and cuts along the lines. It is possible to directly generate .dxf from code and then the laser will cut along the lines you code, but if you want to make complex shapes by combining other shapes, you have to figure out where they intersect one-another to so as to get proper unions. That's why we are making bitmaps and then tracing them.  

This repository contains some demo scripts to get you started. Clone or download the zip (see links on the right). Each of the demos contains a folder that ends with start. The links below for each demo provide instructions that step you through building that demo from its starting script.

### Getting started coding your image

This repository contains a number of demo scripts to get started. Clone it or download and unzip the zip file. Start up Processing and open up one of the demo scripts. 

* [demo1](demo1/rotate.md): start here if you're a beginner 
* ![Rotated Image](/demo1/rotate/rotated.png)



* [demo2](demo2/bubbles.md): intermediate: 
* ![Bubbles](/demo2/bubbles/bubbles.png)

* [demo3](demo3/polar.md): intermediate:
* ![Polar](/demo3/polar/polar.png)

Don't feel you have to stick with the demos though. Feel free to explore and create your own designs from scratch. 

Once you have made an image you are happy with you want to convert it to vector format for cutting. 

###Converting bitmaps to vector with Inkscape 
(for those without Inkcape or an equivelent installed, email your bitmap to me and I'll do the conversion):
0. After opening Inkscape select layer -> delete current layer. This means everything you do happens on the root layer. This is important because when you export as a dxf only things on the root layer seem to get exported.
1. Import your bitmap: File -> Import 
2. Trace the image: Path -> Trace Bitmap -> Ok
3. Drag the vector image off the top of the bitmap one and delete the bitmap (you can test which image is the vector one by selecting it, running Object -> Fill and Stroke, and changing the color. The vector image will change, the bitmap won't.
4. Resize your vector image: Select your image. On the tool bar along the top are little boxes mared W, H and a padlock icon. Toggle the padlock to locked so both dimensions scale together. Change the dropdown on the right of the H box to cm, and type into the H or W box to resize. Please keep your designs to roughly 5cm*5cm or smaller, just because we will have a lot of things to cut tonight :-)
5. Save your file as an svg: File -> Save as-> yourname.svg. (The laser cutter actually wants dxf files, which Incscape can also produce but I'm going to combine people's things into batches to save set up time on the laser cuttter, so please create an svg)
6. email it to me


###Some useful tips if you got hooked on laser cutting and want to do more
The laser can both cut and engrave. You can vector engrave along lines, which is exactly the same as cutting except that you the laser uses a lower power so as not to go all the way through. It can also engrave a bitmap, in which case it thresholds the pixels into black and white and scans backwards and forwards, flasing the laser on and off to only burn the black pixels.

You don't have to code to make designs to laser cut. You can create them directly in a vector drawing package or you can draw them on paper, scan them, and trace them to get a vector as you did with your coded images. The format you want end up with is .dxf (and optionally a bitmap to bitmap engrave).

Exporting .dxf seems to be somewhat unreliable in some vector drawing packages. Also if you get svg files from the internet and convert them to dxf, it may not always be obvious where the actual lines are that would get cut (as svg has things like fill that don't carry accross to dxf). If you are having issues with things not cutting like you thought they would, its worth installing librecad (librecad.org). You can use librecad to open you dxf's and see what they actually look like.

Googling for 'beautiful laser cut' should yeild plenty of inspiration. If you're ispired for chrismas gifts, in addition to coasters, jewlery and keyrings, you can make very nice clocks. (The space has some $3 clock mechanisms), and all you have to do is ensure that your design has a hole the right size for the mechanism to fit through in the  middle. 

In addition to bamboo, the laser can cut acrylic, leather, card & paper, corregated cardboard (for quick, cheap and large scuptures or prototypes), some fabrics and more. 

