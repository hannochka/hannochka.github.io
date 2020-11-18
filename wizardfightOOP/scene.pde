class Scene {

  Scene(int pCount) {
    particleCount = pCount;
    wizard = new Wizard();
    person = new Person();
    x = new float[particleCount];
    y = new float[particleCount];
    speedX= new float[particleCount];
    speedY= new float[particleCount];
    speedYref = new float[particleCount];
    speedXref = new float[particleCount];

    for (int i=0; i< particleCount; i+=1) {
      x[i] = random(210, 530);
      y[i] = random(510, 535);
      speedX[i] = 2.5;
      speedY[i] = -1.5;
      speedXref[i] = random(-.5, .5);
      speedYref[i] = random(2, 3);
    }
  }

  
  void Draw() {
    fill(255, 255, 255);
    rect(0, 0, width, height);
    fill(255);
    //ground
    fill(132, 132, 130);
    rect(0, 600, width, 100);
    //sky
    fill(21, 0, 128);
    rect(0, 0, width, 600);
    //moon
    fill(240, 248, 255) ; 
    ellipse(100, 75, 80, 80);
    //draw wizard
    wizard.Draw();


    if (frog == null) {
      for (int i=0; i< particleCountCurrent; i+=1) { 
        //spell
        fill(255, 255, 51);
        ellipse(x[i], y[i], radius*2, radius*2);

        //cast the spell
        x[i] += speedX[i] + random(-1, 1);
        speedY[i] += gravity + random(-.2, .2);
        y[i] += speedY[i] + random(-1, 1);

        //call collision  
        collision(i);
      }
      if (particleCountCurrent < particleCount - birthRate) {
        particleCountCurrent += birthRate;
      }
    }
    personFrog();
  }

  void collision(int i) {
    //once the particle hits person it goes to ground
    if (x[i] > (width/1.5) - radius) {
      speedX[i] = speedXref[i];
      speedY[i] = speedYref[i];
    }
  }  
  void personFrog() {
    if (particleCountCurrent < particleCount/4) {
      //draw person
      person.Draw();
    } else if (particleCountCurrent < particleCount/3) {
      //draw person
      person.Draw();
    } else if (particleCountCurrent < particleCount/2) {
      //draw frog
      if (frog == null)
        frog = new Frog();
      frog.Draw();
    }
    if (particleCountCurrent == particleCount) {
      //nothing
    }
  }
  Wizard wizard;
  Frog frog;
  Person person;

  float birthRate = 1;
  float particleCountCurrent = 0;
  int s = 100;

  int particleCount;
  float[] x = new float[particleCount];
  float[] y = new float[particleCount];
  float[] speedX= new float[particleCount];
  float[] speedY= new float[particleCount];
  float[] speedYref = new float[particleCount];
  float[] speedXref = new float[particleCount];
  int radius = 3;
  float gravity = 0.01;

}
