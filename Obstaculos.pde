//*NUEVO
class Obstaculos {
  PImage [] Poste = new PImage[3];
  PImage [] Nube = new PImage[3];
  PImage corazon, Nido, Halcon, Halconb, Arbol,
    pajaro0, Nubelarga;
  Obstaculos() {
    for (int p=0; p<Poste.length; p++) {
      Poste[p] = loadImage("Poste"+p+".png");
      Poste[p].resize(250, 600);
    }
    for (int p=0; p<nube.length; p++) {
      nube[p] = new FBox(80, 50);
    }
    for (int p=0; p<Nube.length; p++) {
      Nube[p] = loadImage("Nube"+p+".png");
      Nube[p].resize(100, 70);
    }

    Arbol = loadImage("Arbol.png");
    Arbol.resize(270, 570);
    Nido = loadImage("nido.png");
    Nido.resize(100, 100);
    Nubelarga = loadImage("Borde.png");
    Nubelarga.resize(1200, 50);
    Halcon = loadImage("halcon.png");
    Halcon.resize(300, 130);
    Halconb = loadImage("halconb.png");
    Halconb.resize(300, 130);
    halcon = new FBox(100, 50);
    halcon.setPosition(1200, 250);
    halcon.setGrabbable(true);
    halcon.setStatic(false);
    halcon.setRotatable(false);
    halcon.setName("halcon");
    halcon.setDensity(300);
    //halcon.setRestitution(2);
    mundo.add(halcon);
  }
  void granizo() {
    if (frameCount % 3 == 0) {
      FCircle granizo = new FCircle (20);
      granizo.setFill(255);
      granizo.setPosition(random(0, width), 50);
      granizo.setName("granizo");
      granizo.setDensity(18);
      mundo.add(granizo);
    }
  }
  void halcon() {

    if (tope == false && halcon.getX()>100) {
      halcon.attachImage(Halcon);
      halcon.setVelocity(-200, -15);
    }
    if (tope == false && halcon.getX()  < 100 && F.sonido == true) {
      tope = true;
      Soundhalcon.play();
      Soundhalcon.amp(0.1);
      F.sonido = false;
    }
    if (tope == true && halcon.getX()  <width) {
      halcon.attachImage(Halconb);
      halcon.setVelocity(200, -15);
    }
    if (tope == true && halcon.getX()  > 1100) {
      halcon.setVelocity(-200, -15);
      tope = false;
      F.sonido = true;
    }
  }
  void dibujarObs() {

    poste1_ = new FBox(190, 80);
    poste1_.setGrabbable(false);
    poste1_.setFill(0, 0);
    poste1_.setPosition(400, 415);
    poste1_.setStatic(true);
    poste1_.setName("poste1_");
    mundo.add(poste1_);

    poste1 = new FBox(10, 500);
    poste1.setGrabbable(false);
    poste1.setFill(50);
    poste1.setPosition(400, 600);
    poste1.setStatic(true);
    poste1.attachImage(Poste[0]);
    poste1.setName("poste1");
    mundo.add(poste1);

    poste2_ = new FBox(190, 80);
    poste2_.setGrabbable(false);
    poste2_.setFill(0, 0);
    poste2_.setPosition(750, 425);
    poste2_.setStatic(true);
    poste2_.setName("poste2_");
    //poste2_.setRestitution(5);
    mundo.add(poste2_);

    poste2 = new FBox(50, 500);
    // poste2.setGrabbable(false);
    poste2.setFill(50);
    poste2.setPosition(750, 610);
    poste2.setStatic(true);
    poste2.attachImage(Poste[0]);
    //poste2.setRestitution(3);
    poste2.setName("Poste2");
    mundo.add(poste2);



    arbol = new FBox(130, 100);
    arbol.setGrabbable(false);
    arbol.setPosition(width-100, 400);
    arbol.setStatic(true);
    arbol.attachImage(Arbol);
    arbol.setName("arbol");
    mundo.add(arbol);


    nube[0].setGrabbable(false);
    nube[0].setStatic(true);
    nube[0].setPosition(400, 150);
    nube[0].attachImage(Nube[0]);
    nube[0].setName("nube1");
    mundo.add(nube[0]);

    nube[1].setGrabbable(false);
    nube[1].setStatic(true);
    nube[1].setPosition(850, 300);
    nube[1].attachImage(Nube[0]);
    nube[1].setName("nube1");
    mundo.add(nube[1]);

    //nube[2].setGrabbable(false);
    //nube[2].setStatic(true);
    //nube[2].setPosition(200, width-200);
    //nube[2].attachImage(Nube[0]);
    //nube[2].setName("nube1");
    //mundo.add(nube[2]);


    nube[3].setGrabbable(false); //nube negra 1w
    nube[3].setStatic(true);
    nube[3].setPosition(460, 320);
    nube[3].attachImage(Nube[2]);
    nube[3].setName("nube2");
    mundo.add(nube[3]);

    nube[4].setGrabbable(false);
    nube[4].setStatic(true);
    nube[4].setPosition(850, 130);
    nube[4].attachImage(Nube[2]);
    nube[4].setName("nube2");
    mundo.add(nube[4]);

    nido = new FBox(50, 50);
    nido.setGrabbable(false);
    nido.setStatic(true);
    nido.setPosition(width-100, 320);
    nido.attachImage(Nido);
    nido.setName("nido");
    mundo.add(nido);

    nubelarga = new FBox(width+width, 40);
    nubelarga.setGrabbable(false);
    nubelarga.setStatic(true);
    nubelarga.setPosition(width/2, 0);
    nubelarga.attachImage(Nubelarga);
    //nubelarga.setRestitution(4);
    mundo.add(nubelarga);
  }
}
