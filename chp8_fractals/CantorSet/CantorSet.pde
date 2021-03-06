// Cantor Set
// Daniel Shiffman <http://www.shiffman.net>
// Nature of Code, Chapter 8

// Renders a simple fractal, the Cantor Set



void setup() {
  size(729, 210);
  background(255);
  
  // Call the recursive function
  cantor(0, 0, width);
}

void draw() {
  // No need to loop
  noLoop();
}


void cantor(float x, float y, float len) {
  
  float h = 30;
  
  // recursive exit condition
  if (len >= 1) {
    // Draw line (as rectangle to make it easier to see)
    noStroke();
    fill(0);
    rect(x, y, len, h/3);
    // Go down to next y position
    y += h;
    // Draw 2 more lines 1/3rd the length (without the middle section)
    cantor(x, y, len/3);
    cantor(x+len*2/3, y, len/3);
  }
}

