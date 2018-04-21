
//Aircraft Carrier Speler2 instantie variabelen
public float aircraftLocXSpeler2;
public float aircraftLocYSpeler2;
public boolean aircraftHorizontalSpeler2 = true;

//Battleship Speler2 instantie variabelen
public float battleshipLocXSpeler2;
public float battleshipLocYSpeler2;
public boolean battleshipHorizontalSpeler2 = true;

//Cruiser Speler2 instantie variabelen
public float cruiserLocXSpeler2;
public float cruiserLocYSpeler2;
public boolean cruiserHorizontalSpeler2 = true;

//Destroyer1 Speler2 instantie variabelen
public float destroyer1LocXSpeler2;
public float destroyer1LocYSpeler2;
public boolean destroyer1HorizontalSpeler2 = true;

//Destroyer1 Speler2 instantie variabelen
public float destroyer2LocXSpeler2;
public float destroyer2LocYSpeler2;
public boolean destroyer2HorizontalSpeler2 = true;

//Submarine1 Speler2 instantie variabelen
public float submarine1LocXSpeler2;
public float submarine1LocYSpeler2;
public boolean submarine1HorizontalSpeler2 = true;

//Submarine1 Speler2 instantie variabelen
public float submarine2LocXSpeler2;
public float submarine2LocYSpeler2;
public boolean submarine2HorizontalSpeler2 = true;

public class SchipSpeler2
{
  int newy = 445;
  int br = 30;
  //Aircraft Carrier instantie variabelen
  float aircx = 940+52;
  float aircy = 192 + newy;
  float aircraftX = 940+52;
  float aircraftY = 192 + newy;  
  boolean mousePressedAircraft = false;
  boolean aircraftPlacement = true;
  int aircraftl = 240;
  int aircraftLength = aircraftl;
  int aircraftWidth = br;


  //Battleship instantie variabelen
  float batx = 940+72;
  float baty = 267 + newy;
  float battleshipX = 940+72;
  float battleshipY = 267 + newy;
  boolean mousePressedBattleship = false;
  boolean battleshipPlacement = false;
  int battleshipl = 190;
  int battleshipLength = battleshipl;
  int battleshipWidth = br;


  //Cruiser instantie variabelen
  float crux = 940+92;
  float cruy = 342 + newy;
  float cruiserX = 940+92;
  float cruiserY = 342 + newy;
  boolean mousePressedCruiser = false;
  boolean cruiserPlacement = false;
  int cruiserl = 140;
  int cruiserLength = cruiserl;
  int cruiserWidth = br;

  //Destroyer1 instantie variabelen
  float destrx = 940+65;
  float destry = 417 + newy;
  float destroyerX = 940+65;
  float destroyerY = 417 + newy;
  boolean mousePressedDestroyer = false;
  boolean destroyerPlacement = false;
  int destroyerl = 90;
  int destroyerLength = destroyerl;
  int destroyerWidth = br;

  //Destroyer 2 instantie variabelen
  float destr2x = 940+190;
  float destr2y = 417 + newy;
  float destroyer2X = 940+190;
  float destroyer2Y = 417 + newy;
  boolean mousePressedDestroyer2 = false;
  boolean destroyer2Placement = false;
  int destroyer2Length = destroyerl;
  int destroyer2Width = br;

  //Submarine1 instantie variabelen
  float subx = 940+91;
  float suby = 492+ newy;
  float submarineX = 940+91;
  float submarineY = 492 + newy;
  boolean mousePressedSubmarine = false;
  boolean submarinePlacement = false;
  int submarinel = 40;
  int submarineLength = submarinel;
  int submarineWidth = br;

  //submarine 2 instantie variabelen
  float sub2x = 940+212;
  float sub2y = 492 + newy;
  float submarine2X = 940+212;
  float submarine2Y = 492 + newy;
  boolean mousePressedSubmarine2 = false;
  boolean submarine2Placement = false;
  int submarine2Length = submarinel;
  int submarine2Width = br;

  boolean boatSelectionPalet2 = true;

  boolean overBox = false;
  boolean locked = false;
  float xOffset = 0.0;
  float yOffset = 0.0;

  public void speler2Boten () {
    //if (schepen.player1Ready == true) {
    boatSelection ();
    aircraft();
    battleship();
    cruiser();
    destroyer1();
    destroyer2();
    submarine1();
    submarine2();
    //}
  }

  private void boatSelection () {    
    if (boatSelectionPalet2 == true) {
      fill (255);
      stroke (0);
      rect(980, 545, 265, 40);
      for (int i=0; i<5; i++) {        
        rect(980, 620 + 75 * i, 265, 65);
      }
      textSize(30); 
      fill (0);
      text("Boat Selection", 1020, 575);
    }
  }

  //aircraft is rood

  public void aircraft () {
    if (aircraftPlacement == true) {
      if (mouseX > aircx && mouseX < aircx+aircraftl && mouseY > aircy && mouseY < aircy+br) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(161, 15, 15);
        }
        if (mousePressed) {
          mousePressedAircraft = true;
        }
      } else {
        stroke(0);
        strokeWeight(2);
        fill(255, 0, 0);
        overBox = false;
      }
      if (mousePressedAircraft == true && mousePressed) {
        if (mousePressed) {
          aircraftX = mouseX;
          aircraftY = mouseY;
        }
      }
      if (keyPressed && mousePressedAircraft) {
        if (key == 'p' || key == 'P') {
          aircraftLocXSpeler2 = aircraftX;
          aircraftLocYSpeler2 = aircraftY;
          mousePressedAircraft = false;
          aircraftPlacement = false;
          battleshipPlacement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          aircraftWidth = aircraftl;
          aircraftLength = br;
          aircraftHorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          aircraftWidth = br;
          aircraftLength = aircraftl;
          aircraftHorizontalSpeler2 = true;
        }
      }
    }
    if (aircraftPlacement == false) {
      stroke(0);
      strokeWeight(2);
      fill(255, 0, 0);
    }
    rect(aircraftX, aircraftY, aircraftLength, aircraftWidth);
  }

  //battleship is groen

  public void battleship () {
    if (battleshipPlacement == true) {
      if (mouseX > batx && mouseX < batx+battleshipl && mouseY > baty && mouseY < baty+br) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(13, 131, 9);
        }
        if (mousePressed) {
          mousePressedBattleship = true;
        }
      } else {
        fill(0, 255, 0);
        stroke(0);
        strokeWeight(2);
        overBox = false;
      }
      if (mousePressedBattleship == true && mousePressed) {
        if (mousePressed) {
          battleshipX = mouseX;
          battleshipY = mouseY;
        }
      }
      if (keyPressed && mousePressedBattleship) {
        if (key == 'p' || key == 'P') {
          battleshipLocXSpeler2 = battleshipX;
          battleshipLocYSpeler2 = battleshipY;
          mousePressedBattleship = false;
          battleshipPlacement = false;
          cruiserPlacement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          battleshipWidth = battleshipl;
          battleshipLength = br;
          battleshipHorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          battleshipWidth = br;
          battleshipLength = battleshipl;
          battleshipHorizontalSpeler2 = true;
        }
      }
    }
    if (battleshipPlacement == false) {
      fill(0, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(battleshipX, battleshipY, battleshipLength, battleshipWidth);
  }

  //cruiser is blauw

  public void cruiser () {   
    if (cruiserPlacement == true) {
      if (mouseX > crux && mouseX < crux+cruiserl && mouseY > cruy && mouseY < cruy+br) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(11, 19, 100);
        }
        if (mousePressed) {
          mousePressedCruiser = true;
        }
      } else {
        fill(0, 0, 255);
        stroke(0);
        strokeWeight(2);
        overBox = false;
      }
      if (mousePressedCruiser == true && mousePressed) {
        if (mousePressed) {
          cruiserX = mouseX;
          cruiserY = mouseY;
        }
      }
      if (keyPressed && mousePressedCruiser) {
        if (key == 'p' || key == 'P') {
          cruiserLocXSpeler2 = cruiserX;
          cruiserLocYSpeler2 = cruiserY;
          mousePressedCruiser = false;
          cruiserPlacement = false;
          destroyerPlacement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          cruiserWidth = cruiserl;
          cruiserLength = br;
          cruiserHorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          cruiserWidth = br;
          cruiserLength = cruiserl;
          cruiserHorizontalSpeler2 = true;
        }
      }
    }
    if (cruiserPlacement == false) {
      fill(0, 0, 255);
      stroke(0);
      strokeWeight(2);
    }
    rect(cruiserX, cruiserY, cruiserLength, cruiserWidth);
  }

  //destroyer is geel
  public void destroyer1() {   
    if (destroyerPlacement == true) {
      if (mouseX > destrx && mouseX < destrx+destroyerl && mouseY > destry && mouseY < destry+br) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(245, 245, 20);
        }
        if (mousePressed) {
          mousePressedDestroyer = true;
        }
      } else {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(2);
        overBox = false;
      }
      if (mousePressedDestroyer == true && mousePressed) {
        if (mousePressed) {
          destroyerX = mouseX;
          destroyerY = mouseY;
        }
      }
      if (keyPressed && mousePressedDestroyer) {
        if (key == 'p' || key == 'P') {
          destroyer1LocXSpeler2 = destroyerX;
          destroyer1LocYSpeler2 = destroyerY;
          mousePressedDestroyer = false;
          destroyerPlacement = false;
          destroyer2Placement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          destroyerWidth = destroyerl;
          destroyerLength = br;
          destroyer1HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          destroyerWidth = br;
          destroyerLength = destroyerl;
          destroyer1HorizontalSpeler2 = true;
        }
      }
    }
    if (destroyerPlacement == false) {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(destroyerX, destroyerY, destroyerLength, destroyerWidth);
  }

  public void destroyer2() {    
    if (destroyer2Placement == true) {
      if (mouseX > destr2x && mouseX < destr2x+destroyerl && mouseY > destr2y && mouseY < destr2y+br) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(245, 245, 20);
        }
        if (mousePressed) {
          mousePressedDestroyer2 = true;
        }
      } else {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(2);
        overBox = false;
      }
      if (mousePressedDestroyer2 == true && mousePressed) {
        if (mousePressed) {
          destroyer2X = mouseX;
          destroyer2Y = mouseY;
        }
      }
      if (keyPressed && mousePressedDestroyer2) {
        if (key == 'p' || key == 'P') {
          destroyer2LocXSpeler2 = destroyer2X;
          destroyer2LocYSpeler2 = destroyer2Y;
          mousePressedDestroyer = false;
          destroyer2Placement = false;
          submarinePlacement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          destroyer2Width = destroyerl;
          destroyer2Length = br;
          destroyer2HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          destroyer2Width = br;
          destroyer2Length = destroyerl;
          destroyer2HorizontalSpeler2 = true;
        }
      }
    }
    if (destroyer2Placement == false) {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(destroyer2X, destroyer2Y, destroyer2Length, destroyer2Width);
  }

  //submarine is paars
  public void submarine1() {
    if (submarinePlacement == true) {
      if (mouseX > subx && mouseX < subx+br && mouseY > suby && mouseY < suby+submarinel) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(138, 12, 121);
        }
        if (mousePressed) {
          mousePressedSubmarine = true;
        }
      } else {
        fill(138, 12, 121);
        stroke(0);        
        strokeWeight(2);
        overBox = false;
      }
      if (mousePressedSubmarine == true && mousePressed) {
        if (mousePressed) {
          submarineX = mouseX;
          submarineY = mouseY;
        }
      }
      if (keyPressed && mousePressedSubmarine) {
        if (key == 'p' || key == 'P') {
          submarine1LocXSpeler2 = submarineX;
          submarine1LocYSpeler2 = submarineY;
          mousePressedSubmarine = false;
          submarinePlacement = false;
          submarine2Placement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          submarineWidth = submarinel;
          submarineLength = br;
          submarine1HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          submarineWidth = br;
          submarineLength = submarinel;
          submarine1HorizontalSpeler2 = true;
        }
      }
    }
    if (submarinePlacement == false) {
      fill(138, 12, 121);
      stroke(0);        
      strokeWeight(2);
    }    
    rect(submarineX, submarineY, submarineLength, submarineWidth);
  }

  public void submarine2() {
    if (submarine2Placement == true) {
      if (mouseX > sub2x && mouseX < sub2x+br && mouseY > sub2y && mouseY < sub2y+submarinel) {
        overBox = true;
        if (!locked) {
          stroke(255);
          strokeWeight(2);
          fill(138, 12, 121);
        }
        if (mousePressed) {
          mousePressedSubmarine2 = true;
        }
      } else {
        fill(138, 12, 121);
        stroke(0);        
        strokeWeight(2);
        overBox = false;
      }
      if (mousePressedSubmarine2 == true && mousePressed) {
        if (mousePressed) {
          submarine2X = mouseX;
          submarine2Y = mouseY;
        }
      }
      if (keyPressed && mousePressedSubmarine2) {
        if (key == 'p' || key == 'P') {
          submarine2LocXSpeler2 = submarine2X;
          submarine2LocYSpeler2 = submarine2Y;
          mousePressedSubmarine2 = false;
          submarine2Placement = false;
          boatSelectionPalet2 = false;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          submarine2Width = submarinel;
          submarine2Length = br;
          submarine2HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          submarine2Width = br;
          submarine2Length = submarinel;
          submarine2HorizontalSpeler2 = true;
        }
      }
    }
    if (submarine2Placement == false) {
      fill(138, 12, 121);
      stroke(0);        
      strokeWeight(2);
    }
    rect(submarine2X, submarine2Y, submarine2Length, submarine2Width);
  }
}