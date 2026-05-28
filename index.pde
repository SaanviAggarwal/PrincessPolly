int money = 100;
int dayTime = 1800;

PImage grassBackground;
PImage profileIcon;
PImage carWashBackground;

PImage salonImg;
PImage petShopImg;
PImage iceCreamImg;
PImage restaurantImg;
PImage bedroomImg;
PImage carWashImg;
PImage airportImg;
PImage profilePageImg;

int storeW = 170;
int storeH = 120;

boolean salonPage = false;

void setup()
{
  size(1200, 700);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  grassBackground = loadImage("grass.png");

  profileIcon = loadImage("profile.png");

  salonImg = loadImage("salon.png");
  petShopImg = loadImage("petStore.png");
  iceCreamImg = loadImage("icecream.png");
  restaurantImg = loadImage("restaurant.png");
  bedroomImg = loadImage("castle.png");
  carWashImg = loadImage("carWash1.png");
  airportImg = loadImage("airport.png");

  handsImg = loadImage("hands.png");
  feetImg = loadImage("feet.png");

  nailClipperImg = loadImage("nailClipper.png");
  nailFileImg = loadImage("nailFiler.png");

  redBottle = loadImage("redNailPolish.png");
  blueBottle = loadImage("blueBottle.png");
  greenBottle = loadImage("greenNailPolish.png");
  yellowBottle = loadImage("yellowNailPolish.png");
  purpleBottle = loadImage("purpleBottle.png");
  pinkBottle = loadImage("pinkBottle.png");
}

void draw()
{
  if (salonPage)
  {
    drawSalonPage();
  }

  else
  {
    drawMainPage();
  }
}

void drawMainPage()
{
  background(135, 206, 235);

  image(grassBackground, width/2, height/2, width, height);

  fill(255);
  textSize(40);
  text("Princess Polly World", width/2, 50);

  image(profileIcon, 60, 60, 70, 70);

  noFill();
  stroke(255);
  strokeWeight(3);
  ellipse(60, 60, 75, 75);

  if (frameCount % 60 == 0 && dayTime > 0)
  {
    dayTime--;
  }

  int minutes = dayTime / 60;
  int seconds = dayTime % 60;

  String timerText = nf(minutes, 2) + ":" + nf(seconds, 2);

  fill(255, 220, 220);
  rectMode(CENTER);
  rect(1050, 50, 180, 50, 20);

  fill(0);
  textSize(24);
  text(timerText, 1050, 50);

  fill(255, 240, 180);
  rect(120, 650, 200, 50, 20);

  fill(0);
  text("$ " + money, 120, 650);

  image(salonImg, 200, 230, 200, 220);

  image(petShopImg, 450, 180, 220, 220);

  image(iceCreamImg, 780, 250, 170, 150);

  image(restaurantImg, 1000, 220, 275, 250);

  image(bedroomImg, 545, 520, 175, 220);

  image(carWashImg, 950, 500, 200, 175);

  image(airportImg, 300, 400, 300, 250);
}

void mousePressed()
{
  if (!salonPage)
  {
    if (mouseX > 100 && mouseX < 300 &&
        mouseY > 120 && mouseY < 340)
    {
      salonPage = true;
    }
  }

  else
  {
    salonMousePressed();
  }
}

boolean overButton(int x, int y)
{
  if (mouseX > x - storeW/2 &&
      mouseX < x + storeW/2 &&
      mouseY > y - storeH/2 &&
      mouseY < y + storeH/2)
  {
    return true;
  }

  return false;
}


