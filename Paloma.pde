class Paloma{

  FCircle Paloma;
  PImage Pajaro;
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;



  Paloma() {
    Paloma = new FCircle(50);
    Paloma.setPosition(200, 95);
    Pajaro = loadImage("Pajaro.png");
    Paloma.attachImage(Pajaro);
    
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
    if(!izqPresionado && !derPresionado){
      //Paloma.setVelocity(0, Paloma.getVelocityY());
    }
    if(volarPresionado){
      Paloma.setVelocity(Paloma.getVelocityX(), -320);
    }
  }

  void dibujarP() {
    mundo.add(Paloma);
  }
}
