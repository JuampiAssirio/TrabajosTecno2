class Boton {
  Boton() {
  }
  void boton(int px, int py, int ancho, int alto) {
    if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
      fill(255, 0, 0);
    } else {
      fill(41, 22, 1);
    }
    noStroke();
    rect(px, py, ancho, alto);
  }


  boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
    boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
    return presionado;
  }
  boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
    if (mx>px && mx<px+ancho && my>py&&my<py+alto) {
      return true;
    } else {
      return false;
    }
  }
}
