class Paloma {
  float velocidad = 1200;
  float angulo = radians (-75);
  Boolean izqPresionado, derPresionado;
  Boolean volarPresionado;
  float vx, vy, x;
  PImage [] pajaro = new PImage [5];
  PImage  volar1, volar2, ImagenPaloma;
  int volarDer, volarIzq;
  String estadoVolar;
  
  Paloma() {
    for (int p=0; p<pajaro.length; p++) {
      pajaro[p] = loadImage("pajaro"+p+".png");
      pajaro[p].resize(120, 120);
    }
    volar1 = loadImage("pajaro1.png");
    volar1.resize(120, 120);
    volar2 = loadImage("pajaro2.png");
    volar2.resize(120, 120);
    Paloma = new FBox(50, 50);
    Paloma.setPosition(50, 650);
    //Paloma.attachImage(pajaro[0]);
    //Paloma.setVelocity(vx, vy);
    Paloma.setRotatable(false);
    Paloma.setStatic(false);
    Paloma.setName( "paloma" );
    Paloma.attachImage(pajaro[0]);
    estadoVolar = "nada";
    mundo.add(cadena);
  }


  void inicializar() {

    izqPresionado = false;
    derPresionado = false;
    volarPresionado = false;
  }


  void actualizar() {

    if (izqPresionado) {
      Paloma.setVelocity(-90, Paloma.getVelocityY());
      //Paloma.attachImage(pajaro4);
    }
    if (derPresionado) {
      Paloma.setVelocity(90, Paloma.getVelocityY());
      //Paloma.attachImage(pajaro0);
    }

    if (volarPresionado) {
      Paloma.setVelocity(Paloma.getVelocityX(), -320);
    }
  }
  void sprites() {
    if (key == 'd' || key == 'w') {
      estadoVolar = "volarDer";
      if (estadoVolar == "volarDer") {
        volarDer++;
      }    
      if (volarDer > 3) {
        volarDer = 0;
      }

      if (volarDer == 1) {
        Paloma.attachImage(pajaro[0]);
      }
      if (volarDer == 2) {
        Paloma.attachImage(pajaro[1]);
      }
      if (volarDer == 3) {
        Paloma.attachImage(pajaro[2]);
      }
    }

    if (key == 'a') {

      estadoVolar = "volarIzq";
      if (estadoVolar == "volarIzq") {
        volarIzq++;
      }
      if (volarIzq > 2) {
        volarIzq = 0;
      }
      if (volarIzq == 1) {
        Paloma.attachImage(pajaro[3]);
      }
      if (volarIzq == 2) {
        Paloma.attachImage(pajaro[4]);
      }
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
