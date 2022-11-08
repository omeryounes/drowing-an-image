//Global Variables
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode=false;
//
size(1000, 800); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio Calculations
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
//Note: Dimensions are found in the image file / Right Click / Properties / Details
int picWidth = 800;
int picHeight = 600;
//Image Orientation: Landscape, Portrait, Square
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
/* Older algorithm
 if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
 if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
 */
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//Better Iamge Stretch Algorithm
if ( appWidth >= picWidth ) {
  picWidthAdjusted = picWidth;
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
} else {
  //Image smaller than CANVAS needs separate algorithm
}
if ( appHeight >= picHeight ) {
  picHeightAdjusted = picHeight;
  if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
  if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
} else {
  //Image smaller than CANVAS needs separate algorithm
}

//picWidthAdjusted = appWidth * imageWidthRatio;
//picHeightAdjusted = appHeight * imageHeightRatio;
//
//Developer verified variables
println (appWidth, picWidth, picWidthAdjusted);
println (appHeight, picHeight, picHeightAdjusted);
//
//Population
pic = loadImage("//FS-052/studuser$/Gr12/o.younes1/My Documents/GitHub-20221019T165601Z-001/GitHub/drowing-an-image/Images used/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
//if () {} else {} for a Binaary Choice, no single IF
if (nightMode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(64, 64, 40); //RGB: Night Mode
//
//image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
