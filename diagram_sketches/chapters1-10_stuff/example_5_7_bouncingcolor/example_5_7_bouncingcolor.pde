// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 5-7: "Bouncing" color

// Two variables for color.
float c1 = 0;      
float c2 = 255;    

// Start by incrementing c1.
float c1Change = 1;  
// Start by decrementing c2.
float c2Change = -1; 

void setup() {
  size(833, 833);
}

void draw() {
  noStroke();
  scale(4.165);

  // Draw rectangle on left
  fill(c1, 0, c2);
  rect(0, 0, 100, 200);

  // Draw rectangle of right
  fill(c2, 0, c1);
  rect(100, 0, 100, 200);

  // Adjust color values
  c1 = c1 + c1Change;
  c2 = c2 + c2Change;

  // Instead of reaching the edge of a window, these variables reach the "edge" of color:  
  // 0 for no color and 255 for full color.  
  // When this happens, just like with the bouncing ball, the change is reversed.

  // Reverse direction of color change 
  if (c1 < 0 || c1 > 255) {
    c1Change *= -1;
  }

  if (c2 < 0 || c2 > 255) {
    c2Change *= -1;
  }
  
  if (frameCount > 100) {
    saveFrame("fig_05_09_colorsfading.png");
    
    
    noLoop(); 
  }
}