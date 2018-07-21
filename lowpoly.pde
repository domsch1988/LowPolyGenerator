int scl = 200;
int rows = 8000 / scl;
int cols = 5000 / scl;
int number= rows*cols;
int sat = 200;
int bright = 200;
int range = 10;
float r;
float g;
float b;
PVector[][] squares = new PVector[rows][cols];

void setup () {
  colorMode(HSB);
  //r = random(0,255);
  //g = random(0,255);
  //b = random(0,255);
  r = 210;
  g = 12;
  b = 13;
  size(5120, 3840);
  for (int i = 0; i < rows; i ++) {
    for (int j = 0; j < cols; j ++) {
      float rnd1 = random(0, scl);
      int x = i * scl;
      int y = j * scl;
      println(i*j);
      squares[i][j]=(new PVector(x, y, rnd1));
    }
  }
  background(r, g, b);
  //stroke(255);
  noStroke();
  noFill();
  translate(-400, -400);
  for (int i = 0; i < rows-1; i ++) {
    for (int j = 0; j < cols-1; j ++) {
      println(squares[i][j].x);
      //rect(squares[i][j].x, squares[i][j].y, scl, scl);
      point(squares[i][j].x+squares[i][j].z, squares[i][j].y+squares[i][j].z);
      float x1 = squares[i][j].x+squares[i][j].z;
      float y1 = squares[i][j].y+squares[i][j].z;
      float x2 = squares[i+1][j].x+squares[i+1][j].z;
      float y2 = squares[i+1][j].y+squares[i+1][j].z;
      float x3 = squares[i][j+1].x+squares[i][j+1].z;
      float y3 = squares[i][j+1].y+squares[i][j+1].z;
      float x4 = squares[i+1][j+1].x+squares[i+1][j+1].z;
      float y4 = squares[i+1][j+1].y+squares[i+1][j+1].z;
      float r1 = random(r-range,r+range);
      float g1 = random(g-range,g+range);
      float b1 = random(b-range,b+range);
      fill(r, g, b1);
      triangle(x1, y1, x2, y2, x3, y3);
      r1 = random(r-range,r+range);
      g1 = random(g-range,g+range);
      b1 = random(b-range,b+range);
      fill(r, g, b1);
      triangle(x2, y2, x3, y3, x4, y4);
    }
  }
  save("test.png");
}

void draw () {
  
}
