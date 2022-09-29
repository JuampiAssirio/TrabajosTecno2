class Canion {
  float anguloVel = 2;
  float x, y;
  int tiempoCan;
  PImage Canion;
  //Funciones F;

  Canion( float x_, float y_) {
    // F = new Funciones();
    x=x_;
    y=y_;
    Canion = loadImage("Canion.png");
    Canion.resize(250, 140);

    tiempoCan = 4;  
  }

  /* void responderATeclasEstado() {
   if ( keyPressed ) {
   if ( keyCode == DOWN ) {
   angulo += radians(anguloVel);
   } else if ( keyCode == UP ) {
   angulo -= radians(anguloVel);
   }
   angulo = constrain( angulo,
   radians(-90), radians(0) );
   }
   }*/
  void dibujarCanion() {
    image(Canion, -50, 570);
    if (estado == "Juego") {
      if (frameCount % 60 == 0) {
        tiempoCan = (tiempoCan-1) ;
      }
    }
    if (tiempoCan > 0) {
      textFont(fuente);
      fill(255, 0, 0);
      textSize(40);
      text (tiempoCan, 50, 150);
    }
  }
}
