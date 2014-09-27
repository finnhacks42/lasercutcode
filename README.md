lasercutcode
============

The idea of this workshop is to create a design in code which we can then cut out of wood, acrylic or card on the laser cutter. 

We will use the Processing language, which is essentially Java with some additional libraries and an IDE designed to make it easy for beginners to get started. You will write code to produce a black and white bitmap image. Then you will then use a vector drawing package to transform your bitmap into a vector drawing that the laser cutter can cut. A bitmap image is just a big table of numbers which specify the color of each tiny sqaure of your image. A vector image contains a set of paths, or essentially equations that specify where the lines go. The laser cutter takes a vector image and cuts along the lines.

This repository contains some demo scripts to get you started. Clone it or download the zip.  

demo1: start here if you're a beginner. file://demo1/rotate.md

demo2: intermediate

demo3: more advanced.

Don't feel you have to stick with the demos though. Feel free to explore and create your own designs. 

Once you have made an image you are happy with you want to convert it to vector format for cutting. 

Converting bitmaps to vector with Inkscape (for those without Inkcape or an equivelent installed, email your bitmap to me and I'll do the conversion):

1) Import your bitmap: File -> Import (your image will be in a folder in your sketchbook)
2) Trace the image: Path -> Trace Bitmap -> Ok
3) Drag the vector image off the top of the bitmap one and delete the bitmap (you can test which image is the vector one by selecting it, running Object -> Fill and Stroke, and changing the color. The vector image will change, the bitmap won't.
4) Resize your vector image: Select your image. On the tool bar along the top are little boxes mared W, H and a padlock icon. Toggle the padlock to locked so both dimensions scale together. Change the dropdown on the right of the H box to cm, and type into the H or W box to resize. Please keep your designs to roughly 5cm*5cm or smaller, just because we will have a lot of things to cut tonight :-)
4) Save your file as an svg: File -> Save as-> yourname.svg. (The laser cutter actually wants dxf files, which Incscape can also produce but I'm going to combine people's things into batches to save set up time on the laser cuttter, so please create an svg)
5) email it to me






