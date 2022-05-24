class Dir_y_Vel {
  float posX;
  float posY;
  float prevPosX;
  float prevPosY;
  float miDireccionX;
  float miDireccionY;
  float miDireccionPolar;
  float vel;
  Dir_y_Vel () {
    this.posX=width;
    this.posY=height;
  }

  void calcularTodo (float mi_X, float mi_Y) {
    prevPosX=posX;
    prevPosY=posY;
    posX=mi_X;
    posY=mi_Y;

    miDireccionX = posX-prevPosX;
    miDireccionY = posY-prevPosY;
    miDireccionPolar = degrees(atan2( posY-prevPosY, posX-prevPosX));

    vel = dist (posX, posY, prevPosX, prevPosY);
  }




  float velocidad() {
    return vel;
  }

  float direccionX () {
    return miDireccionX;
  }

  float direccionY () {
    return miDireccionY;
  }


  float direccionPolar () {
    return miDireccionPolar;
  }
}
