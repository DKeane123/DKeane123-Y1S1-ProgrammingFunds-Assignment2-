PImage img;
PImage img2;
float r = (0.1);
float r2 = (1);

void setup()
{
  fullScreen();  
  strokeWeight(0);
  frameRate(90);
  img = loadImage("planet.png");
  img2 = loadImage("doodle_earth.png");
}

int i = 0;
int m = -100;
int n = -100;

void draw()
{
  background(0);
  background1();
  planet1();
  planet2();
  spaceship();
}

void background1()
{
  int a = 1;
  int x = 45;
  int y = 30;
  float z = random(10, 20);

  while (a <= 185)
  {
    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(x, y, z, z);
    a++;
    x=x+30;
    y=y+100;
    if (x >= 1900)
    {
      x = 30;
    }
    if (y >= 1050)
    {
      y = 30;
    }
  }
}

void planet1()
{
  pushMatrix();
  translate(1600, 750);  
  rotate(r2);
  image(img2, 0, 0);
  r2 = r2 + 0.005;
  popMatrix();
}

void planet2()
{
  pushMatrix();
  translate(250, 250);
  rotate(r);
  image(img, 0, 0);
  r = r + 0.05;
  popMatrix();
}

void spaceship()
{
  translate(m, n);
  rotate(3.9);
  fill(166, 191, 191);
  triangle(280, 0, 280, 100, 200, 50);
  for (int v = 0; v < 100; v = v + 20) {
    for (int w = 0; w < 255; w = w + 5) {
      fill(255);
      rect(w, v, 5, 20);
    }
  }
  fill(255, 0, 0);
  triangle(0, 0, -100, 50, 0, 100);
  fill(166, 191, 191);
  ellipse(50, 50, 60, 60);
  fill(85, 217, 217);
  ellipse(50, 50, 50, 50);

  if (i <= 50)
  {
    fill(255, 255, 0);
    triangle(280, 20, 280, 80, 340, 50);
    fill(255, 165, 0);
    triangle(280, 10, 280, 40, 310, 25);
    triangle(280, 60, 280, 90, 310, 75);
    i++;
  }
  if (i > 50) 
  {
    fill(255, 165, 0);
    triangle(280, 20, 280, 80, 340, 50);
    fill(255, 255, 0);
    triangle(280, 10, 280, 40, 310, 25);
    triangle(280, 60, 280, 90, 310, 75);
    i++;
  }
  if (i >= 100)
  {
    int (i = 0);
  }
  if (m >= 2200)
  {
    m = -100;
  }

  if (n >= 1400)
  {
    n = -100;
  }

  m = m + 3;
  n = n + 3;
}
