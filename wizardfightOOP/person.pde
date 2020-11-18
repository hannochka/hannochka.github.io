class Person {
  Person() {
  }
  void Draw() {
    strokeWeight(5);
    // body
    line(600, 470, 600, 600) ; 
    // left leg
    line(600, 600, 550, 640) ; 
    // right leg
    line(600, 600, 630, 640) ; 
    // left arm
    line(600, 500, 640, 540) ; 
    // right arm
    line(600, 500, 550, 540) ; 
    // head
    fill(210, 180, 140) ; 
    ellipse(600, 470, 40, 40) ;
  }
}
