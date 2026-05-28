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

  //Main Page 
  salonImg = loadImage("salon.png");
  petShopImg = loadImage("petStore.png");
  iceCreamImg = loadImage("icecream.png");
  restaurantImg = loadImage("restaurant.png");
  bedroomImg = loadImage("castle.png");
  carWashImg = loadImage("carWash1.png");
  airportImg = loadImage("airport.png");
  carWashBackground = loadImage("blackBackground.png");
  handsImg = loadImage("hands.png");
  feetImg = loadImage("feet.png");

  // NAil Salon
  nailClipperImg = loadImage("nailClipper.png");
  nailFileImg = loadImage("nailFiler.png");
  
  redBottle = loadImage("redNailPolish.png");
  blueBottle = loadImage("blueBottle.png");
  greenBottle = loadImage("greenNailPolish.png");
  yellowBottle = loadImage("yellowNailPolish.png");
  purpleBottle = loadImage("purpleBottle.png");
  pinkBottle = loadImage("pinkBottle.png");
  
  // Pet Store
  dog = loadImage("dog.png");
  cat = loadImage("cat.png");
  bunny = loadImage("bunny.png");
  turtle = loadImage("turtle.png");
  horse = loadImage("horse.png");
  
  dogFood = loadImage("dogFood.png");
  catFood = loadImage("catFood.png");
  bunnyFood = loadImage("bunnyFood.png");
  turtleFood = loadImage("turtleFood.png");
  horseFood = loadImage("horseFood.png");
  
  dogAccessory = loadImage("dogItem.png");
  catAccessory = loadImage("catItem.png");
  bunnyAccessory = loadImage("bunnyItem.png");
  turtleAccessory = loadImage("turtleItem.png");
  horseAccessory = loadImage("horseItem.png");
    
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
    drawPetShopPage();
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
 if (mouseX > 100 && mouseX < 200 && mouseY > 105 && mouseY < 335 )
  {
  drawSalonPage();
  }
 // HANDS BUTTON

  if (salonChoice.equals(""))
  {
    if (mouseX > 320 && mouseX < 620 &&
        mouseY > 320 && mouseY < 670)
    {
      salonChoice = "hands";
    }

    // FEET BUTTON

    if (mouseX > 880 && mouseX < 1180 &&
        mouseY > 320 && mouseY < 670)
    {
      salonChoice = "feet";
    }
  }

  // NAIL POLISH COLORS 
// dist is for distance to check where the user is clicking 
//https://processing.org/reference/dist_.html
  if (clipped && filed)
  {
    // red
    if (dist(mouseX, mouseY, 180, 620) < 60)
    {
      nailColor = color(255, 0, 0);
    }

    // blue
    if (dist(mouseX, mouseY, 340, 620) < 60)
    {
      nailColor = color(0, 100, 255);
    }

    // green
    if (dist(mouseX, mouseY, 500, 620) < 60)
    {
      nailColor = color(0, 200, 100);
    }

    // yellow
    if (dist(mouseX, mouseY, 660, 620) < 60)
    {
      nailColor = color(255, 230, 0);
    }

    // purple
    if (dist(mouseX, mouseY, 820, 620) < 60)
    {
      nailColor = color(170, 0, 255);
    }

    // pink
    if (dist(mouseX, mouseY, 980, 620) < 60)
    {
      nailColor = color(255, 100, 180);
    }
  }
  
  //home

  if (mouseX > 975 && mouseX < 1125 && mouseY > 25 && mouseY < 75)
  {
    drawMainPage();
  }
 if (mouseX > ((width/2)-100) && mouseX < ((width/2)+100) && mouseY > 590 && mouseY < 650){
  petPage.equals("items");
}
  petShopMousePressed();
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
