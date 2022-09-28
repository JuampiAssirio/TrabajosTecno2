//*NUEVO
class Obstaculos {
  PImage [] Poste = new PImage[3];
  PImage corazon, Nido, Halcon, Halconb, Arbol, 
    pajaro0, Nubelarga, Nube1, Nube2;
  Obstaculos() {
    for (int p=0; p<Poste.length; p++) {
      Poste[p] = loadImage("Poste"+p+".png");
      Poste[p].resize(250, 600);
    }
    Arbol = loadImage("Arbol.png");
    Arbol.resize(270, 570);
    Nube1 = loadImage("Nube1.png");
    Nube1.resize(100, 70);
    Nube2 = loadImage("Nube2.png");
    Nube2.resize(100, 70);
    Nido = loadImage("nido.png");
    Nido.resize(100, 100);
    Nubelarga = loadImage("Borde.png");
    Nubelarga.resize(2400, 50);
    Halcon = loadImage("halcon.png");
    Halcon.resize(300, 130);
    Halconb = loadImage("halconb.png");
    Halconb.resize(300, 130);

  }
  void granizo() {
    if (frameCount % 5 == 0) {
      FCircle granizo = new FCircle (20);
      granizo.setFill(255);
      granizo.setPosition(random(0, width), 50);
      granizo.setName("granizo");
      granizo.setDensity(15);
      mundo.add(granizo);
    }
  }
    void halcon() {
    halcon = new FBox(100, 50);
    halcon.setPosition(1200, random(40, 200));
    halcon.setGrabbable(true);
    halcon.setStatic(false);
    halcon.setRotatable(false);
    halcon.setDensity(1);
    if (tope == false && halcon.getX()>100) {
      halcon.setVelocity(-500,200);
      halcon.attachImage(Halcon);
    }
    if (tope == false && halcon.getX()  < 100) {
      tope = true;
    }
    if (tope == true && halcon.getX()  <width) {
      halcon.attachImage(Halconb);
    }
    if (tope == true && halcon.getX()  > 1100) {
      tope = false;
      Soundhalcon.play();
      Soundhalcon.amp(0.1);
    }
    mundo.add(halcon);
  }
  void dibujarObs() {

    poste1_ = new FBox(190, 80);
    poste1_.setGrabbable(false);
    poste1_.setFill(0, 0);
    poste1_.setPosition(400, 415);
    poste1_.setStatic(true);
    poste1_.setName("poste1_");
    mundo.add(poste1_);

    poste1 = new FBox(50, 500);
    poste1.setGrabbable(false);
    poste1.setFill(50);
    poste1.setPosition(400, 600);
    poste1.setStatic(true);
    poste1.attachImage(Poste[0]);
    //poste1.setRestitution(2);
    poste1.setName("poste1");
    mundo.add(poste1);

  /*  poste2_ = new FBox(190, 80);
    poste2_.setGrabbable(false);
    poste2_.setFill(0, 0);
    poste2_.setPosition(750, 315);
    poste2_.setStatic(true);
    poste2_.setName("poste2_");
    poste2_.setRestitution(5);
    mundo.add(poste2_);

    poste2 = new FBox(50, 500);
    // poste2.setGrabbable(false);
    poste2.setFill(50);
    poste2.setPosition(750, 500);
    poste2.setStatic(true);
    poste2.attachImage(Poste[1]);
    poste2.setRestitution(3);
    poste2.setName("poste2");
    mundo.add(poste2);*/



    arbol = new FBox(130, 100);
    arbol.setGrabbable(false);
    arbol.setPosition(width-100, 400);
    arbol.setStatic(true);
    arbol.attachImage(Arbol);
    arbol.setName("arbol");
    mundo.add(arbol);

    nube1 = new FBox(50, 50);
    nube1.setGrabbable(false);
    nube1.setStatic(true);
    nube1.setPosition(200, 200);
    nube1.attachImage(Nube1);
    nube1.setName("nube1");
    mundo.add(nube1);

    nube2 = new FBox(50, 50);
    nube2.setGrabbable(false);
    nube2.setStatic(true);
    nube2.setPosition(600, 30);
    nube2.attachImage(Nube2);
    nube2.setName("nube2");
    mundo.add(nube2);

    nido = new FBox(50, 50);
    nido.setGrabbable(false);
    nido.setStatic(true);
    nido.setPosition(width-100, 320);
    nido.attachImage(Nido);
    nido.setName("nido");
    mundo.add(nido);

    nubelarga = new FBox(width, 80);
    nubelarga.setGrabbable(false);
    nubelarga.setStatic(true);
    nubelarga.setPosition(0, 0);
    nubelarga.attachImage(Nubelarga);
    //nubelarga.setRestitution(4);
    mundo.add(nubelarga);
  }
}
