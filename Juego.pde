class Juego {
  int total;
  PImage corazon;
  boolean perder;
  Canion c;
  Boton B;
  Juego() {
    total = 3;
    c = new Canion(50, height-80);
    B = new Boton();
    perder = false;
  }
  void mostrarvidas() {
    corazon = loadImage("corazon.png");
    corazon.resize(50, 50);
    if (total >= 1) {
      image(corazon, 40, 40);
    }
    if (total >= 2) {
      image(corazon, 100, 40);
    }
    if (total >= 3) {
      image(corazon, 160, 40);
    }
  }
  void perdervida() {
    perder = true;
    total--;
  }
  void borrarBalas() {
    ArrayList <FBody> cuerpos = mundo.getBodies();
    //println(cuerpos.size());
    for (FBody este : cuerpos) {
      String nombre = este.getName();
      if (nombre != null) {
        if (nombre.equals("bala")) {
          if (este.getY() >height-30) {
            mundo.remove (este);
            total--;
          }
        }
      }
    }
  }

  void perder() {
    if (total < 1) {
      estado = "perder";
      if (estado=="perder") {
        background(255);
        textSize(40);
        textAlign(CENTER);
        fill(255, 0, 0);
        text("Has fallado", width/2, 320);
        textSize(30);
        B.boton(465, 355, 270, 50);
        fill(255);
        text("Volver a Intentar", width/2, 390);
      }
    }
  }
  void ganar() {
    if (estado == "ganar") {
      background(255);
      textSize(40);
      textAlign(CENTER);
      fill(0);
      text("Has Ganado! Felicitaciones", width/2, height/2);
      textSize(30);
      B.boton(465, 355, 270, 50);
      fill(255);
      text("Volver a Intentar", width/2, 390);
      frameCount = 0;
    }
  }
}
