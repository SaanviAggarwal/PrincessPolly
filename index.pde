// Princess Polly Interactive World
// HOME PAGE - Day edidtion


int money = 100;
int dayTime = 1800; // 30 minutes

// Background + images
PImage grassBackground;
PImage profileIcon;
PImage carWashBackground;
 


// Store graphics
PImage salonImg;
PImage petShopImg;
PImage iceCreamImg;
PImage restaurantImg;
PImage bedroomImg;
PImage carWashImg;
PImage airportImg;
PImage profilePageImg;

// button sizes
int storeW = 170;
int storeH = 120;


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
  carWashBackground = loadImage("");
    
  drawMainPage();

}

void draw(){
}

void drawMainPage ()
{
  background(135, 206, 235);

  // grass bg
 
  
  image(grassBackground, width/2, height/2, width, height);

  // 
 
  fill(255);
  textSize(40);
  text("Princess Polly World", width/2, 50);

  // pfp
 
  image(profileIcon, 60, 60, 70, 70);

  // clickable border
  noFill();
  stroke(255);
  strokeWeight(3);
  ellipse(60, 60, 75, 75);

  // countdown (https://processing.org/examples/clock.html)

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

  // Wallet
 

  fill(255, 240, 180);
  rect(120, 650, 200, 50, 20);

  fill(0);
  textSize(24);
  text("$ " + money, 120, 650);

  
 

  image(salonImg, 200, 230, 200, 220);

  image(petShopImg, 450, 180,220, 220);

  image(iceCreamImg, 780, 250, 170, 150);

  image(restaurantImg, 1000, 220, 275, 250);

  image(bedroomImg, 545, 520, 175, 220);

  image(carWashImg, 950, 500, 200,175);

  image(airportImg, 300, 400, 300, 250);


}


//mousy ( https://processing.org/reference/mouseClicked_.html) 
void mousePressed()
{
  //pfp
 
  if (dist(mouseX, mouseY, 60, 60) < 40)
  {
    println("Go to Profile Page");
  }

  // stores

  

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
 if (mouseX > 200 && mouseX < 400 && mouseY > 230 && mouseY < 450 )
  {
  drawSalonPage();
  }
  
  //hands 
  if (salonChoice.equals(""))
  {
    // hands
    if (mouseX > 170 && mouseX < 470 &&
        mouseY > 210 && mouseY < 390)
    {
      salonChoice = "hands";
    }

    // feet
    if (mouseX > 730 && mouseX < 1030 &&
        mouseY > 210 && mouseY < 390)
    {
      salonChoice = "feet";
    }
  }

  //clip button

  if (mouseX > 190 && mouseX < 410 &&
      mouseY > 175 && mouseY < 265)
  {
    clipped = true;
  }

//file button

  if (mouseX > 540 && mouseX < 760 &&
      mouseY > 175 && mouseY < 265)
  {
    filed = true;
  }

 //colours

  // RED
  if (mouseX > 120 && mouseX < 180 &&
      mouseY > 620 && mouseY < 720)
  {
    nailColor = color(255, 0, 0);
  }

  // BLUE
  if (mouseX > 270 && mouseX < 330 &&
      mouseY > 620 && mouseY < 720)
  {
    nailColor = color(0, 100, 255);
  }

  // GREEN
  if (mouseX > 420 && mouseX < 480 &&
      mouseY > 620 && mouseY < 720)
  {
    nailColor = color(0, 255, 100);
  }

  // YELLOW
  if (mouseX > 570 && mouseX < 630 &&
      mouseY > 620 && mouseY < 720)
  {
    nailColor = color(255, 255, 0);
  }

  // PURPLE
  if (mouseX > 720 && mouseX < 780 &&
      mouseY > 620 && mouseY < 720)
  {
    nailColor = color(180, 0, 255);
  }

  // PINK
  if (mouseX > 870 && mouseX < 930 &&
      mouseY > 620 && mouseY < 720)
  {
    nailColor = color(255, 100, 200);
  }

//home

  if (mouseX > 975 && mouseX < 1125 &&
      mouseY > 25 && mouseY < 75)
  {
    println("Go Back Home");
  }
}

// button detection (https://processing.org/examples/button.html)
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
