class Paloma {
  float velocidad = 800;
  float angulo = radians (-80);
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;
  float vx, vy;
  PImage pajaro0, volar1, volar2, pajaro4, ImagenPaloma;
  int volar;
  Paloma() {
    pajaro0 = loadImage("pajaro0.png");
    pajaro0.resize(120, 120);
    pajaro4 = loadImage("pajaro4.png");
    pajaro4.resize(120, 120);
    volar1 = loadImage("pajaro1.png");
    volar1.resize(120, 120);
    volar2 = loadImage("pajaro2.png");
    volar2.resize(120, 120);
    Paloma = new FBox(50, 50);
    Paloma.setPosition(50, 650);
    Paloma.attachImage(pajaro0);
    //Paloma.setVelocity(vx, vy);
    Paloma.setRotatable(false);
    Paloma.setStatic(false);
    Paloma.setRestitution(0);
    Paloma.setName( "paloma" );
  }


  void inicializar() {

    izqPresionado = false;
    derPresionado = false;
    volarPresionado = false;
  }


  void actualizar() {

    if (key == 'a') {
      Paloma.setVelocity(-90, Paloma.getVelocityY());
      Paloma.attachImage(pajaro4);
    }
    if (key == 'd') {
      Paloma.setVelocity(90, Paloma.getVelocityY());
      Paloma.attachImage(pajaro0);
    }

    if (volarPresionado) {
      Paloma.setVelocity(Paloma.getVelocityX(), -320);
    }
  }

  void disparar( FWorld mundo ) {


    float vx = velocidad * cos( angulo );
    float vy = velocidad * sin( angulo );
    // println(vx, vy);
    Paloma.setVelocity( vx, vy );
    mundo.add( Paloma );
  }
}
