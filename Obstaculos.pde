//*NUEVO
class Obstaculos {
  PImage [] Poste = new PImage[2];
  PImage corazon, Nido, Lombriz, Lombriz2, Lombriz3, Halcon, Halconb, Arbol,
    pajaro0, Nube1, Nube2;
  Obstaculos() {
    for (int p=0; p<Poste.length; p++) {
      Poste[p] = loadImage("Poste"+p+".png");
      Poste[p].resize(250, 600);
    }
    //Arbol = loadImage("Arbol.png")
    //Arbol.resize(270, 570);
    //Poste = loadImage("Poste.png");
    //Poste.resize(250, 600);
    Nube1 = loadImage("Nube1.png");
    Nube1.resize(100, 70);
    Nube2 = loadImage("Nube2.png");
    Nube2.resize(100, 70);
    Nido = loadImage("nido.png");
    Nido.resize(100, 100);
    Lombriz = loadImage("lombrizCafe.png");
    Lombriz.resize(60, 60);
    Lombriz2 = loadImage("lombrizCigarrillo.png");
    Lombriz2.resize(60, 60);
    Lombriz3 = loadImage("lombrizCiega.png");
    Lombriz3.resize(60, 60);
    Halcon = loadImage("halcon.png");
    Halcon.resize(300, 130);
    Halconb = loadImage("halconb.png");
    Halconb.resize(300, 130);
  }
  void granizo() {
    if (frameCount % 20 == 0) {
      FCircle granizo = new FCircle (30);
      granizo.setFill(255);
      granizo.setPosition(random(0, width), 50);
      granizo.setName("granizo");
      mundo.add(granizo);
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

    poste1 = new FBox(50, 500);
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
    poste2_.setPosition(650, 315);
    poste2_.setStatic(true);
    poste2_.setName("poste2_");
    mundo.add(poste2_);

    poste2 = new FBox(50, 500);
    // poste2.setGrabbable(false);
    poste2.setFill(50);
    poste2.setPosition(650, 500);
    poste2.setStatic(true);
    poste2.attachImage(Poste[1]);
    poste2.setName("poste2");
    mundo.add(poste2);

    poste3_ = new FBox(190, 80);
    poste3_.setGrabbable(false);
    poste3_.setFill(0, 0);
    poste3_.setPosition(1000, 315);
    poste3_.setStatic(true);
    poste3_.setName("poste3_");
    mundo.add(poste3_);

    poste3 = new FBox(50, 480);
    poste3.setGrabbable(false);
    poste3.setPosition(1000, 500);
    poste3.setStatic(true);
    // poste3.attachImage(Poste);
    poste3.setName("poste3");
    mundo.add(poste3);

    arbol = new FBox(130, 100);
    arbol.setGrabbable(false);
    arbol.setPosition(100, 400);
    arbol.setStatic(true);
    arbol.attachImage(Arbol);
    arbol.setName("arbol");
    mundo.add(arbol);

    nube1 = new FBox(50, 50);
    nube1.setGrabbable(false);
    nube1.setStatic(true);
    nube1.setPosition(400, 30);
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
    nido.setPosition(500, 620);
    nido.attachImage(Nido);
    nido.setName("nido");
    mundo.add(nido);



    lombriz = new FBox(40, 40);
    lombriz.setGrabbable(false);
    lombriz.setStatic(true);
    lombriz.setPosition(1100, 500);
    lombriz.attachImage(Lombriz);
    lombriz.setName("lombrizCafe");
    mundo.add(lombriz);

    lombriz2 = new FBox(40, 40);
    lombriz2.setGrabbable(false);
    lombriz2.setStatic(true);
    lombriz2.setPosition(600, 600);
    lombriz2.attachImage(Lombriz2);
    lombriz2.setName("lombrizCigarrillo");
    mundo.add(lombriz2);



    lombriz3 = new FBox(40, 40);
    lombriz3.setGrabbable(false);
    lombriz3.setStatic(true);
    lombriz3.setPosition(300, 600);
    lombriz3.attachImage(Lombriz3);
    lombriz3.setName("lombrizCiega");
    mundo.add(lombriz3);
  }
}
