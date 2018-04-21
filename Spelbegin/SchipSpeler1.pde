

//Aircraft Carrier instantie variabelen
public float aircraftLocX;
public float aircraftLocY;
public boolean aircraftHorizontal = true;

 //Battleship instantie variabelen
public float battleshipLocX;
public float battleshipLocY;
public boolean battleshipHorizontal = true;

//Cruiser instantie variabelen
public float cruiserLocX;
public float cruiserLocY;
public boolean cruiserHorizontal = true;

//Destroyer1 instantie variabelen
public float destroyer1LocX;
public float destroyer1LocY;
public boolean destroyer1Horizontal = true;

//Destroyer1 instantie variabelen
public float destroyer2LocX;
public float destroyer2LocY;
public boolean destroyer2Horizontal = true;

//Submarine1 instantie variabelen
public float submarine1LocX;
public float submarine1LocY;
public boolean submarine1Horizontal = true;

//Submarine1 instantie variabelen
public float submarine2LocX;
public float submarine2LocY;
public boolean submarine2Horizontal = true;

public class SchipSpeler1
{
  int newy = 445;
  int br = 30;
  //Aircraft Carrier lokale variabelen
  float aircx = 52;
  float aircy = 192 + newy;
  float aircraftX = 52;
  float aircraftY = 192+ newy;  
  boolean mousePressedAircraft = false;
  boolean aircraftPlacement = true;  
  int aircraftl = 240;
  int aircraftLength = aircraftl;
  int aircraftWidth = br;

  //Battleship lokale variabelen
  float batx = 72;
  float baty = 267 + newy;
  float battleshipX = 72;
  float battleshipY = 267 + newy;
  boolean mousePressedBattleship = false;
  boolean battleshipPlacement = false;
  int battleshipl = 190;
  int battleshipLength = battleshipl;
  int battleshipWidth = br;
  boolean battleshipHorizontal = true;

  //Cruiser lokale variabelen
  float crux = 92;
  float cruy = 342 + newy;
  float cruiserX = 92;
  float cruiserY = 342 + newy;
  boolean mousePressedCruiser = false;
  boolean cruiserPlacement = false;
  int cruiserl = 140;
  int cruiserLength = cruiserl;
  int cruiserWidth = br;

  //Destroyer1 lokale variabelen
  float destrx = 65;
  float destry = 417 + newy;
  float destroyerX = 65;
  float destroyerY = 417 + newy;
  boolean mousePressedDestroyer = false;
  boolean destroyerPlacement = false;
  int destroyerl = 90;
  int destroyerLength = destroyerl;
  int destroyerWidth = br;

  //Destroyer 2 lokale variabelen
  float destr2x = 190;
  float destr2y = 417 + newy;
  float destroyer2X = 190;
  float destroyer2Y = 417 + newy;
  boolean mousePressedDestroyer2 = false;
  boolean destroyer2Placement = false;
  int destroyer2Length = destroyerl;
  int destroyer2Width = br;

  //Submarine1 lokale variabelen
  float subx = 91;
  float suby = 492 + newy;
  float submarineX = 91;
  float submarineY = 492 + newy;
  boolean mousePressedSubmarine = false;
  boolean submarinePlacement = false;
  int submarinel = 40;
  int submarineLength = submarinel;
  int submarineWidth = br;

  //submarine 2 lokale variabelen
  float sub2x = 210;
  float sub2y = 492 + newy;
  float submarine2X = 210;
  float submarine2Y = 492 + newy;
  boolean mousePressedSubmarine2 = false;
  boolean submarine2Placement = false;
  int submarine2Length = submarinel;
  int submarine2Width = br;

  boolean boatSelectionPalet = true;

  boolean overBox = false;
  boolean locked = false;
  float xOffset = 0.0;
  float yOffset = 0.0;

  public void speler1Boten () {
    boatSelection ();
    aircraft();
    battleship();
    cruiser();
    destroyer1();
    destroyer2();
    submarine1();
    submarine2();
  }

  private void boatSelection () {
    if (boatSelectionPalet == true) {
      fill (255);
      stroke (0);
      rect(40, 545, 265, 40);
      for (int i=0; i<5; i++) {
        rect(40, 620 + 75 * i, 265, 65);
      }
      textSize(30); 
      fill (0);
      text("Boat Selection", 85, 575);
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
          aircraftLocX = aircraftX;
          aircraftLocY = aircraftY;
          mousePressedAircraft = false;
          aircraftPlacement = false;
          battleshipPlacement = true;          
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          aircraftWidth = aircraftl;
          aircraftLength = br;
          aircraftHorizontal = false;
        }
        if (key == 'h' || key == 'H') {
          aircraftWidth = br;
          aircraftLength = aircraftl;
          aircraftHorizontal = true;
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
          battleshipLocX = battleshipX;
          battleshipLocY = battleshipY;
          mousePressedBattleship = false;
          battleshipPlacement = false;
          cruiserPlacement = true;
          //println(battleshipX);
          //println(battleshipY);
          //println(battleshipHorizontal);
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          battleshipWidth = battleshipl;
          battleshipLength = br;
          battleshipHorizontal = false;
        }
        if (key == 'h' || key == 'H') {
          battleshipWidth = br;
          battleshipLength = battleshipl;
          battleshipHorizontal = true;
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
          cruiserLocX = cruiserX;
          cruiserLocY = cruiserY;         
          mousePressedCruiser = false;
          cruiserPlacement = false;
          destroyerPlacement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          cruiserWidth = cruiserl;
          cruiserLength = br;
          cruiserHorizontal = false;
        }
        if (key == 'h' || key == 'H') {
          cruiserWidth = br;
          cruiserLength = cruiserl;
          cruiserHorizontal = true;
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
          destroyer1LocX = destroyerX;
          destroyer1LocY = destroyerY;
          mousePressedDestroyer = false;
          destroyerPlacement = false;
          destroyer2Placement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          destroyerWidth = destroyerl;
          destroyerLength = br;
          destroyer1Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          destroyerWidth = br;
          destroyerLength = destroyerl;
          destroyer1Horizontal = true;
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
          destroyer2LocX = destroyer2X;
          destroyer2LocY = destroyer2Y;
          mousePressedDestroyer = false;
          destroyer2Placement = false;
          submarinePlacement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          destroyer2Width = destroyerl;
          destroyer2Length = br;
          destroyer2Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          destroyer2Width = br;
          destroyer2Length = destroyerl;
          destroyer2Horizontal = true;
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
          submarine1LocX = submarineX;
          submarine1LocY = submarineY;
          mousePressedSubmarine = false;
          submarinePlacement = false;
          submarine2Placement = true;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          submarineWidth = submarinel;
          submarineLength = br;
          submarine1Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          submarineWidth = br;
          submarineLength = submarinel;
          submarine1Horizontal = true;
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
          submarine2LocX = submarine2X;
          submarine2LocY = submarine2Y;
          mousePressedSubmarine2 = false;
          submarine2Placement = false;
          boatSelectionPalet = false;
        }
      }
      if (keyPressed) {
        if (key == 'v' || key == 'V') {
          submarine2Width = submarinel;
          submarine2Length = br;
          submarine2Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          submarine2Width = br;
          submarine2Length = submarinel;
          submarine2Horizontal = true;
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