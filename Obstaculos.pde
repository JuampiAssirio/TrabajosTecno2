//*NUEVO
class Obstaculos {

  Obstaculos() {
    Nido = loadImage("nido.png");
    Nido.resize(140, 140);
    Lombriz = loadImage("lombrizCafe.png");
    Lombriz.resize(60, 60);
    Lombriz2 = loadImage("lombrizCigarrillo.png");
    Lombriz2.resize(60, 60);
    Lombriz3 = loadImage("lombrizCiega.png");
    Lombriz3.resize(60, 60);
    Poste = loadImage("poste.png");
    Poste.resize(250, 600);
    Halcon = loadImage("halcon.png");
    Halcon.resize(300, 130);
  }
  void dibujarObs() {
    poste1 = new FBox(50, 500);
    poste1.setGrabbable(false);
    poste1.setFill(50);
    poste1.setPosition(550, 600);
    poste1.setStatic(true);
    poste1.attachImage(Poste);
    poste1.setName("poste1");
    mundo.add(poste1);

    poste2 = new FBox(50, 500);
    poste2.setGrabbable(false);
    poste2.setFill(50);
    poste2.setPosition(900, 500);
    poste2.setStatic(true);
    poste2.attachImage(Poste);
    poste2.setName("poste2");
    mundo.add(poste2);

    nido = new FBox(80, 80);
    nido.setGrabbable(false);
    nido.setStatic(true);
    nido.setPosition(100, 640);
    nido.setFill(106, 79, 5);
    nido.attachImage(Nido);
    nido.setName("nido");
    mundo.add(nido);


    halcon = new FBox(100, 50);
    halcon.setPosition(1200, random(40, 250));
    halcon.setGrabbable(false);
    halcon.setStatic(false);
    halcon.setRotatable(false);
    halcon.attachImage(Halcon);
    halcon.setName("halcon");
    mundo.add(halcon);

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
    lombriz2.setPosition(600, 500);
    lombriz2.attachImage(Lombriz2);
    lombriz2.setName("lombrizCigarrillo");
    mundo.add(lombriz2);

    lombriz3 = new FBox(40, 40);
    lombriz3.setGrabbable(false);
    lombriz3.setStatic(true);
    lombriz3.setPosition(400, 100);
    lombriz3.attachImage(Lombriz3);
    lombriz3.setName("lombrizCiega");
    mundo.add(lombriz3);
  }
}
