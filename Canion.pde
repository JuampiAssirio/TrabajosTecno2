class Canion {
  float anguloVel = 2;
  float diamCubo = 40;
  float velocidad = 600;

  PImage Paloma ;
  PImage Canion1 ;


  float x, y;
  float angulo;
  float largo = 90;
  float ancho = 40;



  Canion( float x_, float y_) {

    x=x_;
    y=y_;
    angulo = radians (-50);
  }

  void dibujar () {
    pushMatrix();
    Canion1=loadImage("Canion.png");
    translate (x, y);
    rotate (angulo);
    rect (-ancho/2, -ancho/2, largo, ancho);
    image(Canion1, -ancho-50, -ancho-50);
    popMatrix();
  }
  void responderATeclasEstado() {
    if ( keyPressed ) {
      if ( keyCode == DOWN ) {
        angulo += radians(anguloVel);
      } else if ( keyCode == UP ) {
        angulo -= radians(anguloVel);
      }
      angulo = constrain( angulo,
        radians(-90), radians(0) );
    }
  }
  void disparar( FWorld mundo ) {

    Paloma =loadImage("Pajaro.png");
    Paloma.resize(140, 140);

    FCircle bala = new FCircle (40);
    bala.setPosition( x, y );
    bala.attachImage(Paloma);
    bala.setName( "bala" );

    float vx = velocidad * cos( angulo );
    float vy = velocidad * sin( angulo );

    bala.setVelocity( vx, vy );


    mundo.add( bala );
  }
}
