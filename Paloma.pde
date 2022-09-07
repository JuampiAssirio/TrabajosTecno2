class Paloma {

  FCircle Paloma;
  PImage Pajaro;
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;



  Paloma() {
    Paloma = new FCircle(50);
    Paloma.setPosition(200, 395);
    Paloma.setStatic(false);
    Pajaro = loadImage("Pajaro.png");
    Pajaro.resize(120, 120);
    Paloma.attachImage(Pajaro);
    Paloma.setRotatable(false);
    Paloma.setName("paloma");
  }


  void inicializar(float _x, float _y) {

    izqPresionado = false;
    derPresionado = false;
    volarPresionado = false;
  }


  void actualizar() {
    if (izqPresionado) {
      Paloma.setVelocity(-90, Paloma.getVelocityY());
      Paloma.setFill(0);
    }
    if (derPresionado) {
      Paloma.setVelocity(90, Paloma.getVelocityY());
      Paloma.setFill(255);
    }
    if (!izqPresionado && !derPresionado) {
      //Paloma.setVelocity(0, Paloma.getVelocityY());
    }
    if (volarPresionado) {
      Paloma.setVelocity(Paloma.getVelocityX(), -320);
    }
  }


  void dibujarP() {
    mundo.add(Paloma);
  }
}
