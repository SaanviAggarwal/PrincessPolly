// Princess Polly Interactive World
// HOME PAGE - Updated Beginner Version

// ---------------- VARIABLES ----------------
int money = 100;
int dayTime = 1800; // 30 minutes

// Background + images
PImage grassBackground;
PImage profileIcon;

// Store graphics
PImage salonImg;
PImage petShopImg;
PImage iceCreamImg;
PImage restaurantImg;
PImage bedroomImg;
PImage carWashImg;
PImage airportImg;
PImage profilePageImg;

// Store button sizes
int storeW = 170;
int storeH = 120;

// ---------------- SETUP ----------------
void setup()
{
  size(1200, 700);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  // ---------------- LOAD IMAGES ----------------
  // PUT YOUR OWN PICTURES INSIDE THE DATA FOLDER

  grassBackground = loadImage("grass.png");

  profileIcon = loadImage("profile.png");

  salonImg = loadImage("salon.png");
  petShopImg = loadImage("petStore.png");
  iceCreamImg = loadImage("icecream.png");
  restaurantImg = loadImage("restaurant.png");
  bedroomImg = loadImage("castle.png");
  carWashImg = loadImage("carwash.png");
  airportImg = loadImage("airport.png");
}

// ---------------- DRAW ----------------
void draw()
{
  background(135, 206, 235);

  // ---------------- GRASS BACKGROUND ----------------
 
  // YOUR OWN GRASS IMAGE
  image(grassBackground, width/2, height/2, width, height);

  // ---------------- TITLE ----------------
 
  fill(255);
  textSize(40);
  text("Princess Polly World", width/2, 50);

  // ---------------- PROFILE ICON ----------------
 
  image(profileIcon, 60, 60, 70, 70);

  // clickable border
  noFill();
  stroke(255);
  strokeWeight(3);
  ellipse(60, 60, 75, 75);

  // ---------------- TIMER ----------------

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

  // ---------------- WALLET ----------------
 
  // MOVED TO BOTTOM LEFT

  fill(255, 240, 180);
  rect(120, 650, 200, 50, 20);

  fill(0);
  textSize(24);
  text("$ " + money, 120, 650);

  // ---------------- STORE GRAPHICS ----------------
 
  // YOU CAN REPLACE ALL THESE WITH YOUR OWN IMAGES

  image(salonImg, 200, 230, storeW, storeH);

  image(petShopImg, 450, 180, storeW, storeH);

  image(iceCreamImg, 720, 250, storeW, storeH);

  image(restaurantImg, 980, 220, storeW, storeH);

  image(bedroomImg, 620, 520, storeW, storeH);

  image(carWashImg, 950, 500, storeW, storeH);

  image(airportImg, 150, 500, storeW, storeH);


}

// ---------------- MOUSE CLICK ----------------
void mousePressed()
{
  // ---------------- PROFILE ICON ----------------
 
  if (dist(mouseX, mouseY, 60, 60) < 40)
  {
    println("Go to Profile Page");
  }

  // ---------------- STORES ----------------

  if (overButton(200, 230))
  {
    println("Go to Salon Page");
  }

  if (overButton(450, 180))
  {
    println("Go to Pet Shop");
  }

  if (overButton(720, 250))
  {
    println("Go to Ice Cream Shop");
  }

  if (overButton(980, 220))
  {
    println("Go to Restaurant");
  }

  if (overButton(620, 520))
  {
    println("Go to Bedroom");
  }

  if (overButton(950, 500))
  {
    println("Go to Car Wash");
  }

  if (overButton(150, 500))
  {
    println("Go to Airport");
  }

  if (overButton(350, 480))
  {
    println("Go to Profile Customization");
  }
}

// ---------------- BUTTON DETECTION ----------------
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
