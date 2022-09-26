class Paloma {
  float velocidad = 1000;
  float angulo = radians (-50);
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;
  float vx, vy;

  PImage pajaro0, pajaro4;

  Paloma() {
    pajaro0 = loadImage("pajaro0.png");
    pajaro0.resize(120, 120);
    pajaro4 = loadImage("pajaro4.png");
    pajaro4.resize(120, 120);
    Paloma = new FBox(50, 50);
    Paloma.setPosition(50, 650);
    Paloma.attachImage(pajaro0);
    //Paloma.setVelocity(vx, vy);
    mundo.add( Paloma );
  }


  void inicializar() {

    izqPresionado = false;
    derPresionado = false;
    volarPresionado = false;
  }


  void actualizar() {
    /*if (izqPresionado == true) {
     //Paloma.setVelocity(vx-90, Paloma.getVelocityY());
     //vx-=90;
     Paloma.attachImage(pajaro4);
     J.direccion = "izq";
     }
     if (derPresionado == true) {
     Paloma.setVelocity(90, Paloma.getVelocityY());
     Paloma.attachImage(pajaro0);
     J.direccion = "der";
     }
     if (!izqPresionado && !derPresionado) {
     Paloma.setVelocity(0, Paloma.getVelocityY());
     }
     if (volarPresionado) {
     Paloma.setVelocity(Paloma.getVelocityX(), -320);
     }*/

    if (key == 'a') {
      Paloma.setVelocity(-90, Paloma.getVelocityY());
      Paloma.attachImage(pajaro4);
    }
    if (key == 'd') {
      Paloma.setVelocity(90, Paloma.getVelocityY());
      Paloma.attachImage(pajaro0);
    }

    if (key == 'w') {
       Paloma.setVelocity(Paloma.getVelocityX(), -320);
      P.volarPresionado = true;
    }
  }
  /*void disparar( FWorld mundo ) {
   
   Paloma.setStatic(false);
   Paloma.setName( "paloma" );
   float vx = velocidad * cos( angulo );
   float vy = velocidad * sin( angulo );
   println(vx, vy);
   Paloma.setVelocity( vx, vy );
   }*/
}
