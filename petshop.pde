//petshop


//  VARIABLES 

// chosen pet
String chosenPet = "";

// warnings
String petMessage = "";

// page system
String petPage = "choose";

// owned pet
boolean ownsPet = false;

// accessories + food
boolean boughtFood = false;
boolean boughtAccessory = false;


//PET PRICES

int dogPrice = 30;
int catPrice = 25;
int bunnyPrice = 20;
int turtlePrice = 15;
int horsePrice = 50;


// PRICES

int foodPrice = 10;
int accessoryPrice = 15;


//  PET pics

PImage dogImg;
PImage catImg;
PImage bunnyImg;
PImage turtleImg;
PImage horseImg;


// food flicks

PImage dogFoodImg;
PImage catFoodImg;
PImage bunnyFoodImg;
PImage turtleFoodImg;
PImage horseFoodImg;


//  ACCESSORY pics

PImage dogAccessoryImg;
PImage catAccessoryImg;
PImage bunnyAccessoryImg;
PImage turtleAccessoryImg;
PImage horseAccessoryImg;


//draw petshoppp

void drawPetShopPage()
{
  background(255, 240, 230);

  // title
  fill(255);
  rect(width/2, 50, 500, 70, 20);

  fill(0);
  textSize(36);
  text("Princess Polly Pet Shop", width/2, 50);

  // money display
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

  // warning / message
  fill(255, 180, 180);
  rect(width/2, 110, 700, 40, 20);

  fill(0);
  textSize(20);
  text(petMessage, width/2, 110);

// p1 choose pet!

  if (petPage.equals("choose"))
  {
    textSize(28);
    fill(0);
    text("Choose Your Pet!", width/2, 160);

    // DOG
    image(dogImg, 150, 320, 170, 170);
    text("$30", 150, 450);

    // CAT
    image(catImg, 350, 320, 170, 170);
    text("$25", 350, 450);

    // BUNNY
    image(bunnyImg, 550, 320, 170, 170);
    text("$20", 550, 450);

    // TURTLE
    image(turtleImg, 750, 320, 170, 170);
    text("$15", 750, 450);

    // HORSE
    image(horseImg, 950, 320, 170, 170);
    text("$50", 950, 450);

    // next arrow
    fill(255);
    rect(width/2, 620, 200, 60, 20);

    fill(0);
    textSize(28);
    text("NEXT →", width/2, 620);
  }

// p2 food+style

  else if (petPage.equals("items"))
  {
    textSize(28);
    fill(0);

    text("Your Pet: " + chosenPet, width/2, 160);

    // yum yum 

    text("Food", 300, 230);

    if (chosenPet.equals("dog"))
    {
      image(dogFoodImg, 300, 350, 200, 200);
    }

    if (chosenPet.equals("cat"))
    {
      image(catFoodImg, 300, 350, 200, 200);
    }

    if (chosenPet.equals("bunny"))
    {
      image(bunnyFoodImg, 300, 350, 200, 200);
    }

    if (chosenPet.equals("turtle"))
    {
      image(turtleFoodImg, 300, 350, 200, 200);
    }

    if (chosenPet.equals("horse"))
    {
      image(horseFoodImg, 300, 350, 200, 200);
    }

    text("$10", 300, 500);


    // style

    text("Accessory", 850, 230);

    if (chosenPet.equals("dog"))
    {
      image(dogAccessoryImg, 850, 350, 200, 200);
    }

    if (chosenPet.equals("cat"))
    {
      image(catAccessoryImg, 850, 350, 200, 200);
    }

    if (chosenPet.equals("bunny"))
    {
      image(bunnyAccessoryImg, 850, 350, 200, 200);
    }

    if (chosenPet.equals("turtle"))
    {
      image(turtleAccessoryImg, 850, 350, 200, 200);
    }

    if (chosenPet.equals("horse"))
    {
      image(horseAccessoryImg, 850, 350, 200, 200);
    }

    text("$15", 850, 500);
  }
}


//pet shop 

void petShopMousePressed()
{

  //home click

  if (mouseX > 975 && mouseX < 1125 &&
      mouseY > 25 && mouseY < 75)
  {
    println("HOME");
  }


 // pet page

  if (petPage.equals("choose"))
  {

    // DOG
    if (dist(mouseX, mouseY, 150, 320) < 85)
    {
      buyPet("dog", dogPrice);
    }

    // CAT
    if (dist(mouseX, mouseY, 350, 320) < 85)
    {
      buyPet("cat", catPrice);
    }

    // BUNNY
    if (dist(mouseX, mouseY, 550, 320) < 85)
    {
      buyPet("bunny", bunnyPrice);
    }

    // TURTLE
    if (dist(mouseX, mouseY, 750, 320) < 85)
    {
      buyPet("turtle", turtlePrice);
    }

    // HORSE
    if (dist(mouseX, mouseY, 950, 320) < 85)
    {
      buyPet("horse", horsePrice);
    }

    // NEXT BUTTON
    if (mouseX > 500 && mouseX < 700 &&
        mouseY > 590 && mouseY < 650)
    {
      if (ownsPet)
      {
        petPage = "items";
      }

      else
      {
        petMessage = "Buy a pet first!";
      }
    }
  }


// item page

  else if (petPage.equals("items"))
  {

    // FOOD
    if (dist(mouseX, mouseY, 300, 350) < 100)
    {
      if (money >= foodPrice)
      {
        money = money - foodPrice;

        boughtFood = true;

        petMessage = "Your " + chosenPet + " has been fed!";
      }

      else
      {
        petMessage = "Save enough money for pet food!";
      }
    }

    // ACCESSORY
    if (dist(mouseX, mouseY, 850, 350) < 100) //https://www.codecademy.com/learn/learn-p5js/modules/p5js-interaction/cheatsheet
    {
      if (money >= accessoryPrice)
      {
        money = money - accessoryPrice;

        boughtAccessory = true;

        petMessage = "Accessory purchased!";
      }

      else
      {
        petMessage = "Save enough money before shopping!";
      }
    }
  }
}


//buy a pet!

void buyPet(String petName, int petPrice)
{
  if (money >= petPrice) //
  {
    money = money - petPrice;

    chosenPet = petName;

    ownsPet = true;

    petMessage = "You bought a " + petName + "! Save money for food!";
  }

  else
  {
    petMessage = "Not enough money to buy this pet!";
  }
}
