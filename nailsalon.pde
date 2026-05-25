// salon variables
String salonChoice = "";

boolean clipped = false;
boolean filed = false;

boolean earnedMoney = false;

color nailColor = color(255, 150, 200);

void drawSalonPage()
{
  background(255, 220, 230);

  // title
  fill(255);
  rectMode(CENTER);
  rect(width/2, 50, 500, 70, 20);

  fill(0);
  textSize(38);
  text("Princess Polly Nail Salon", width/2, 50);

  // money display
  fill(255, 240, 180);
  rect(120, 50, 180, 50, 20);

  fill(0);
  textSize(24);
  text("$ " + money, 120, 50);

  // back button
  fill(255);
  rect(1050, 50, 150, 50, 20);

  fill(0);
  textSize(24);
  text("HOME", 1050, 50);

 //choose hands or feet
  if (salonChoice.equals(""))
  {
    fill(255);
    rect(320, 300, 300, 180, 20);

    rect(880, 300, 300, 180, 20);

    fill(0);
    textSize(40);
    text("HANDS", 320, 300);

    text("FEET", 880, 300);

    textSize(24);
    text("Choose One!", width/2, 180);
  }

  //game
  else
  {
    fill(0);
    textSize(28);
    text("STEP 1: CLIP + FILE THE NAILS", width/2, 120);

    // clip button
    fill(255);
    rect(300, 220, 220, 90, 20);

    fill(0);
    textSize(32);
    text("CLIP", 300, 220);

    // file button
    fill(255);
    rect(650, 220, 220, 90, 20);

    fill(0);
    text("FILE", 650, 220);

    // completed tasks
    fill(0);
    textSize(24);

    if (clipped)
    {
      text("✔ DONE", 300, 300);
    }

    if (filed)
    {
      text("✔ DONE", 650, 300);
    }

//after taska are done

    if (clipped && filed)
    {
      fill(0);
      textSize(30);
      text("PAINT THE NAILS!", width/2, 360);

      drawNails();

      drawPolishColors();

      // earn money once
      if (!earnedMoney)
      {
        money = money + 25;
        earnedMoney = true;
      }
    }
  }
}

// darw nails

void drawNails()
{
  fill(nailColor);
  noStroke();

  // HANDS
  if (salonChoice.equals("hands"))
  {
    for (int i = 0; i < 5; i++)
    {
      ellipse(350 + i * 90, 520, 50, 90);
    }
  }

  // FEET
  if (salonChoice.equals("feet"))
  {
    for (int i = 0; i < 5; i++)
    {
      ellipse(350 + i * 90, 520, 80, 50);
    }
  }
}

//draw nail polish colours

void drawPolishColors()
{
  textSize(24);
  fill(0);
  text("Choose A Nail Polish Color", width/2, 610);

  // RED
  fill(255, 0, 0);
  rect(150, 670, 60, 100);

  // BLUE
  fill(0, 100, 255);
  rect(300, 670, 60, 100);

  // GREEN
  fill(0, 255, 100);
  rect(450, 670, 60, 100);

  // YELLOW
  fill(255, 255, 0);
  rect(600, 670, 60, 100);

  // PURPLE
  fill(180, 0, 255);
  rect(750, 670, 60, 100);

  // PINK
  fill(255, 100, 200);
  rect(900, 670, 60, 100);
}
    println("Go Back Home");
  }
}
