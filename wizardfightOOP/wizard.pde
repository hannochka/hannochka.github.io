class Wizard {
  Wizard() {
  }

  void Draw() {
    strokeWeight(5);
    // body
    line(210, 470, 210, 600) ; 
    // left leg
    line(210, 600, 160, 640) ; 
    // right leg
    line(210, 600, 240, 640) ; 
    // left arm
    line(210, 500, 250, 540) ; 
    // right arm
    line(210, 500, 160, 540) ; 
    // head
    fill(210, 180, 140) ; 
    ellipse(210, 470, 40, 40) ; 

    //wand
    line(250, 540, 270, 520);

    //wizard hat
    fill(77, 166, 255) ; 
    triangle(180, 450, 218, 395, 246, 450);
  }
}
