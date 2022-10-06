void setup()
{
  size(400, 400);
  noLoop();
  background(0);
  textAlign(CENTER);
}
Die bob;
int counter = 0;
void draw()
{
  background(0);
  for (int y = 0; y<=310; y+=40) {
    for (int x = 0; x<=360; x+=40) {
      bob = new Die(x, y);
      counter = bob.random + counter;
      bob.show();
    }
  }
  
  fill(255);
  text("sum: " + counter, 200, 390);
  counter = 0;
}
void mousePressed()
{
  counter = 0;
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  int random;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    if ((int)(Math.random() * 6 + 1) == 1)
      random = 1;
    else if ((int)(Math.random() * 6 + 1) == 2)
      random = 2;
    else if ((int)(Math.random() * 6 + 1) == 3)
      random = 3;
    else if ((int)(Math.random() * 6 + 1) == 4)
      random = 4;
    else if ((int)(Math.random() * 6 + 1) == 5)
      random = 5;
    else 
    random = 6;
  }
  void show()
  {
    fill(220, 0, 0);
    square(myX, myY, 50);

    if (random == 1) {
      fill(255);
      ellipse(myX + 20, myY + 20, 7, 7);
    } else if (random == 2) {
      fill(255);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);
    } else if (random == 3) {
      fill(255);
      ellipse(myX + 10, myY + 10, 7, 7);
      ellipse(myX + 20, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    } else if (random == 4) {
      fill(255);
      ellipse(myX + 8, myY + 10, 7, 7);
      ellipse(myX + 32, myY + 10, 7, 7);
      ellipse(myX + 8, myY + 34, 7, 7);
      ellipse(myX + 32, myY + 34, 7, 7);
    } else if (random == 5) {
      fill(255);
      ellipse(myX + 8, myY + 10, 7, 7);
      ellipse(myX + 32, myY + 10, 7, 7);
      ellipse(myX + 8, myY + 34, 7, 7);
      ellipse(myX + 32, myY + 34, 7, 7);
      ellipse(myX + 20, myY + 20, 7, 7);
    } else if (random == 6) {
      fill(255);
      ellipse(myX + 8, myY + 8, 7, 7);
      ellipse(myX + 32, myY + 8, 7, 7);
      ellipse(myX + 8, myY + 36, 7, 7);
      ellipse(myX + 32, myY + 36, 7, 7);
      ellipse(myX + 8, myY + 20, 7, 7);
      ellipse(myX + 32, myY + 20, 7, 7);
    }

   
  }
}

