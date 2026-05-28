String salonChoice = "";

boolean clipped = false;
boolean filed = false;

boolean clippingStarted = false;
boolean filingStarted = false;

int clipTimer = 0;
int fileTimer = 0;

boolean clipMoney = false;
boolean fileMoney = false;

color nailColor = color(255, 150, 200);

PImage handsImg;
PImage feetImg;

PImage nailClipperImg;
PImage nailFileImg;

PImage redBottle;
PImage blueBottle;
PImage greenBottle;
PImage yellowBottle;
PImage purpleBottle;
PImage pinkBottle;

void drawSalonPage()
{
  background(255, 220, 230);

  fill(255);
  rect(width/2, 50, 500, 70, 20);

  fill(0);
  textSize(38);
  text("Princess Polly Nail Salon", width/2, 50);

  fill(255, 240, 180);
  rect(120, 50, 180, 50, 20);

  fill(0);
  textSize(24);
  text("$ " + money, 120, 50);

  fill(255);
  rect(1050, 50, 150, 50, 20);

  fill(0);
  text("HOME", 1050, 50);

  if (salonChoice.equals(""))
  {
    fill(255);

    rect(320, 320, 300, 350, 20);

    rect(880, 320, 300, 350, 20);

    fill(0);
    textSize(40);

    text("HANDS", 320, 160);

    text("FEET", 880, 160);

    image(handsImg, 320, 340, 220, 220);

    image(feetImg, 880, 340, 220, 220);

    textSize(24);
    text("Click To Choose!", width/2, 620);
  }

  else
  {
    if (salonChoice.equals("hands"))
    {
      image(handsImg, width/2, 320, 500, 350);
    }

    if (salonChoice.equals("feet"))
    {
      image(feetImg, width/2, 320, 500, 350);
    }

    if (!clipped)
    {
      fill(0);
      textSize(30);

      text("MOVE THE CLIPPER FOR 5 SECONDS!", width/2, 100);

      image(nailClipperImg, mouseX, mouseY, 160, 160);

      if (mousePressed && !clippingStarted)
      {
        clipTimer = millis();
        clippingStarted = true;
      }

      if (clippingStarted)
      {
        int secondsLeft = max(0, 5 - (millis() - clipTimer)/1000);

        text(secondsLeft, width/2, 150);

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

    else if (!filed)
    {
      fill(0);
      textSize(30);

      text("MOVE THE FILE FOR 5 SECONDS!", width/2, 100);

      image(nailFileImg, mouseX, mouseY, 160, 160);

      if (mousePressed && !filingStarted)
      {
        fileTimer = millis();
        filingStarted = true;
      }

      if (filingStarted)
      {
        int secondsLeft = max(0, 5 - (millis() - fileTimer)/1000);

        text(secondsLeft, width/2, 150);

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

    else
    {
      fill(0);
      textSize(32);

      text("PAINT THE NAILS!", width/2, 80);

      fill(nailColor);

      ellipse(430, 330, 40, 70);
      ellipse(490, 300, 40, 70);
      ellipse(550, 285, 40, 70);
      ellipse(610, 300, 40, 70);
      ellipse(670, 340, 40, 70);

      image(redBottle, 180, 620, 100, 130);

      image(blueBottle, 340, 620, 100, 130);

      image(greenBottle, 500, 620, 100, 130);

      image(yellowBottle, 660, 620, 100, 130);

      image(purpleBottle, 820, 620, 100, 130);

      image(pinkBottle, 980, 620, 100, 130);
    }
  }
}

void salonMousePressed()
{
  if (salonChoice.equals(""))
  {
    if (mouseX > 170 && mouseX < 470 &&
        mouseY > 145 && mouseY < 495)
    {
      salonChoice = "hands";
    }

    if (mouseX > 730 && mouseX < 1030 &&
        mouseY > 145 && mouseY < 495)
    {
      salonChoice = "feet";
    }
  }

  if (clipped && filed)
  {
    if (dist(mouseX, mouseY, 180, 620) < 60)
    {
      nailColor = color(255, 0, 0);
    }

    if (dist(mouseX, mouseY, 340, 620) < 60)
    {
      nailColor = color(0, 100, 255);
    }

    if (dist(mouseX, mouseY, 500, 620) < 60)
    {
      nailColor = color(0, 200, 100);
    }

    if (dist(mouseX, mouseY, 660, 620) < 60)
    {
      nailColor = color(255, 230, 0);
    }

    if (dist(mouseX, mouseY, 820, 620) < 60)
    {
      nailColor = color(170, 0, 255);
    }

    if (dist(mouseX, mouseY, 980, 620) < 60)
    {
      nailColor = color(255, 100, 180);
    }
  }

  if (mouseX > 975 && mouseX < 1125 &&
      mouseY > 25 && mouseY < 75)
  {
    salonPage = false;

    salonChoice = "";

    clipped = false;
    filed = false;

    clippingStarted = false;
    filingStarted = false;

    clipMoney = false;
    fileMoney = false;
  }
}
