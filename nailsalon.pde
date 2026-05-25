
// choice
String salonChoice = "";

// tasks
boolean clipped = false;
boolean filed = false;

// timer
int taskTimer = 0;

// current tool
String currentTask = "";

// money reward
boolean clipMoney = false;
boolean fileMoney = false;

// nail color
color nailColor = color(255, 150, 200);



// upload ymy own images later
PImage handsImg;
PImage feetImg;

PImage nailClipperImg;
PImage nailFileImg;

// nail polish bottle images
PImage redBottle;
PImage blueBottle;
PImage greenBottle;
PImage yellowBottle;
PImage purpleBottle;
PImage pinkBottle;


//load images

// PUT THIS INSIDE setup()

handsImg = loadImage("hands.png");
feetImg = loadImage("feet.png");

nailClipperImg = loadImage("clipper.png");
nailFileImg = loadImage("file.png");

redBottle = loadImage("redBottle.png");
blueBottle = loadImage("blueBottle.png");
greenBottle = loadImage("greenBottle.png");
yellowBottle = loadImage("yellowBottle.png");
purpleBottle = loadImage("purpleBottle.png");
pinkBottle = loadImage("pinkBottle.png");


//draw salaon

void drawSalonPage()
{
  background(255, 220, 230);

  // title
  fill(255);
  rect(width/2, 50, 500, 70, 20);

  fill(0);
  textSize(38);
  text("Princess Polly Nail Salon", width/2, 50);

  // money
  fill(255, 240, 180);
  rect(120, 50, 180, 50, 20);

  fill(0);
  textSize(24);
  text("$ " + money, 120, 50);

  // home button
  fill(255);
  rect(1050, 50, 150, 50, 20);

  fill(0);
  text("HOME", 1050, 50);

  //Choose hands or feet

  if (salonChoice.equals(""))
  {
    fill(255);
    rect(320, 250, 300, 350, 20);

    rect(880, 250, 300, 350, 20);

    // words
    fill(0);
    textSize(40);
    text("HANDS", 320, 120);

    text("FEET", 880, 120);

    // YOUR GRAPHICS
    image(handsImg, 320, 300, 220, 220);

    image(feetImg, 880, 300, 220, 220);

    textSize(24);
    text("Choose One!", width/2, 620);
  }

 //gamer start

  else
  {
    fill(0);
    textSize(28);
//CLIP

    if (!clipped)
    {
      text("MOVE THE CLIPPER FOR 5 SECONDS!", width/2, 100);

      // timer
      int secondsLeft = max(0, 5 - (millis() - taskTimer)/1000);

      text(secondsLeft, width/2, 150);

      // player tool
      image(nailClipperImg, mouseX, mouseY, 120, 120);

      // after 5 seconds
      if (millis() - taskTimer > 5000)
      {
        clipped = true;

        if (!clipMoney)
        {
          money = money + 2;
          clipMoney = true;
        }
      }
    }

   //file

    else if (!filed)
    {
      text("MOVE THE NAIL FILE FOR 5 SECONDS!", width/2, 100);

      int secondsLeft = max(0, 5 - (millis() - taskTimer)/1000);

      text(secondsLeft, width/2, 150);

      image(nailFileImg, mouseX, mouseY, 120, 120);

      if (millis() - taskTimer > 5000)
      {
        filed = true;

        if (!fileMoney)
        {
          money = money + 2;
          fileMoney = true;
        }
      }
    }
// paint nails

    else
    {
      text("PAINT THE NAILS!", width/2, 80);

      // YOUR HAND / FOOT IMAGE
      if (salonChoice.equals("hands"))
      {
        image(handsImg, width/2, 300, 500, 350);
      }

      if (salonChoice.equals("feet"))
      {
        image(feetImg, width/2, 300, 500, 350);
      }

      //nails (PLACE THEM ON MY OWN)

      fill(nailColor);

      // NAIL 1
      ellipse(430, 330, 40, 70);

      // NAIL 2
      ellipse(490, 300, 40, 70);

      // NAIL 3
      ellipse(550, 285, 40, 70);

      // NAIL 4
      ellipse(610, 300, 40, 70);

      // NAIL 5
      ellipse(670, 340, 40, 70);


      bottle image

      image(redBottle, 180, 620, 90, 120);

      image(blueBottle, 340, 620, 90, 120);

      image(greenBottle, 500, 620, 90, 120);

      image(yellowBottle, 660, 620, 90, 120);

      image(purpleBottle, 820, 620, 90, 120);

      image(pinkBottle, 980, 620, 90, 120);
    }
  }
}


//mouse pressed

void mousePressed()
{
  //pick hands

  if (salonChoice.equals(""))
  {
    if (mouseX > 170 && mouseX < 470 &&
        mouseY > 75 && mouseY < 425)
    {
      salonChoice = "hands";

      taskTimer = millis();
    }

  //pick feet

    if (mouseX > 730 && mouseX < 1030 &&
        mouseY > 75 && mouseY < 425)
    {
      salonChoice = "feet";

      taskTimer = millis();
    }
  }

 //start

  if (clipped && !filed)
  {
    if (millis() - taskTimer > 5000)
    {
      taskTimer = millis();
    }
  }

 //ploish colours

  if (filed)
  {
    // RED
    if (mouseX > 135 && mouseX < 225 &&
        mouseY > 560 && mouseY < 680)
    {
      nailColor = color(255, 0, 0);
    }

    // BLUE
    if (mouseX > 295 && mouseX < 385 &&
        mouseY > 560 && mouseY < 680)
    {
      nailColor = color(0, 100, 255);
    }

    // GREEN
    if (mouseX > 455 && mouseX < 545 &&
        mouseY > 560 && mouseY < 680)
    {
      nailColor = color(0, 255, 100);
    }

    // YELLOW
    if (mouseX > 615 && mouseX < 705 &&
        mouseY > 560 && mouseY < 680)
    {
      nailColor = color(255, 255, 0);
    }

    // PURPLE
    if (mouseX > 775 && mouseX < 865 &&
        mouseY > 560 && mouseY < 680)
    {
      nailColor = color(180, 0, 255);
    }

    // PINK
    if (mouseX > 935 && mouseX < 1025 &&
        mouseY > 560 && mouseY < 680)
    {
      nailColor = color(255, 100, 200);
    }
  }

  //home
  if (mouseX > 975 && mouseX < 1125 &&
      mouseY > 25 && mouseY < 75)
  {
    println("GO HOME");

    salonChoice = "";

    clipped = false;
    filed = false;

    clipMoney = false;
    fileMoney = false;
  }
} 
