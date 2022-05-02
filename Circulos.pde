class Circulos {
  float x, y;
  float diam;
  color colorRelleno;
  
  
  /*Circulos() {
    x = 600;
    y = 700;
    diam = 270;
    colorRelleno = color(0, 255, 0);

  }*/

  Circulos(float x_, float y_, float diam_) {
    x = x_;
    y = y_;
    diam = diam_;
    colorRelleno = color(0, 255, 0);

  }
  


  void dibujar() {
    pushStyle();
    stroke(2);
    ellipse(x, y, diam, diam);
    popStyle();
  }

}
