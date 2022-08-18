class Obstaculos {
  //FBox nube;
  float x, y;
  float tam;
  Obstaculos() {
    x = 1000;
    y = 100;
    tam = 60;
  }



  /*void dibujarNube() {
   nube = new FBox(50, 50);
   nube.setGrabbable(false);
   nube.setStatic(true);
   nube.setPosition(1000, 150);
   nube.setDensity(30);
   nube.setNoStroke();
   mundo.add(nube);
   }*/
  void dibujarNube() {
    fill(255);
    rect(x, y, tam, tam);
  }
}
