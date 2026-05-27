// SALON VARIABLES 

// choice
String salonChoice = "";

// tasks
boolean clipped = false;
boolean filed = false;

// timers
int clipTimer = 0;
int fileTimer = 0;

// moving tracker
boolean clippingStarted = false;
boolean filingStarted = false;

// money 
boolean clipMoney = false;
boolean fileMoney = false;

// nail color
color nailColor = color(255, 150, 200);

//  IMAGES 



PImage handsImg;
PImage feetImg;

PImage nailClipperImg;
PImage nailFileImg;

// nail polish bottles
PImage redBottle;
PImage blueBottle;
PImage greenBottle;
PImage yellowBottle;
PImage purpleBottle;
PImage pinkBottle;


//  DRAW 

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

  //CHOOSE HANDS OR FEET

  if (salonChoice.equals(""))
  {
    fill(255);

    rect(320, 320, 300, 350, 20);

    rect(880, 320, 300, 350, 20);

    // titles
    fill(0);
    textSize(40);

    text("HANDS", 320, 160);

    text("FEET", 880, 160);

    // graphics
    image(handsImg, 320, 340, 220, 220);

    image(feetImg, 880, 340, 220, 220);

    textSize(24);
    text("Click To Choose!", width/2, 620);
  }

  //  GAME START

  else
  {
    //IMAGE

    if (salonChoice.equals("hands"))
    {
      image(handsImg, width/2, 320, 500, 350);
    }

    if (salonChoice.equals("feet"))
    {
      image(feetImg, width/2, 320, 500, 350);
    }

    //  CLIP TASK 

    if (!clipped)
    {
      fill(0);
      textSize(30);

      text("MOVE THE CLIPPER FOR 5 SECONDS!", width/2, 100);

      image(nailClipperImg, mouseX, mouseY, 180, 180);

      // start timer
      if (mousePressed && !clippingStarted)
      {
        clipTimer = millis();
        clippingStarted = true;
      }

      // countdown
      if (clippingStarted)
      {
        int secondsLeft = max(0, 5 - (millis() - clipTimer)/1000);

        text(secondsLeft, width/2, 150);

        // finish task
        if (millis() - clipTimer > 5000)
        {
          clipped = true;

          if (!clipMoney)
          {
            money = money + 2;
            clipMoney = true;
          }
        }
      }
    }

    //  FILE TASK 

    else if (!filed)
    {
      fill(0);
      textSize(30);

      text("MOVE THE FILE FOR 5 SECONDS!", width/2, 100);

      image(nailFileImg, mouseX, mouseY, 180, 180);

      // start timer
      if (mousePressed && !filingStarted)
      {
        fileTimer = millis();
        filingStarted = true;
      }

      // countdown
      if (filingStarted)
      {
        int secondsLeft = max(0, 5 - (millis() - fileTimer)/1000);

        text(secondsLeft, width/2, 150);

        // finish task
        if (millis() - fileTimer > 5000)
        {
          filed = true;

          if (!fileMoney)
          {
            money = money + 2;
            fileMoney = true;
          }
        }
      }
    }

    // PAINT NAILS 

    else
    {
      fill(0);
      textSize(32);

      text("PAINT THE NAILS!", width/2, 80);

      //  NAILS 

      fill(nailColor);

      // nail 1
      ellipse(430, 330, 40, 70);

      // nail 2
      ellipse(490, 300, 40, 70);

      // nail 3
      ellipse(550, 285, 40, 70);

      // nail 4
      ellipse(610, 300, 40, 70);

      // nail 5
      ellipse(670, 340, 40, 70);

      //  BOTTLES 

      image(redBottle, 180, 620, 100, 130);

      image(blueBottle, 340, 620, 100, 130);

      image(greenBottle, 500, 620, 100, 130);

      image(yellowBottle, 660, 620, 100, 130);

      image(purpleBottle, 820, 620, 100, 130);

      image(pinkBottle, 980, 620, 100, 130);
    }
  }
}


// MOUSE PRESSED 

void mousePressed()
{
  // HANDS BUTTON

  if (salonChoice.equals(""))
  {
    if (mouseX > 170 && mouseX < 470 &&
        mouseY > 145 && mouseY < 495)
    {
      salonChoice = "hands";
    }

    // FEET BUTTON

    if (mouseX > 730 && mouseX < 1030 &&
        mouseY > 145 && mouseY < 495)
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
}
