class Juego {

  PImage corazon;
  boolean perder;

  Boton B;
  Juego() {
    vidas = 3;
    lombrices = 0;
    B = new Boton();
    perder = false;
  }
  void mostrarvidas() {
    corazon = loadImage("corazon.png");
    corazon.resize(50, 50);
    if (vidas >= 1) {
      image(corazon, 40, 40);
    }
    if (vidas >= 2) {
      image(corazon, 100, 40);
    }
    if (vidas >= 3) {
      image(corazon, 160, 40);
    }
  }
  void perdervida() {
    vidas--;
  }





void perder() {
  if (vidas < 1) {
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

  if (estado == "ganar" && lombrices == 3) {
    background(255);
    textSize(40);
    textAlign(CENTER);
    fill(0);
    text("Has Ganado! Felicitaciones", width/2, height/2);
    textSize(30);
    B.boton(465, 385, 270, 50);
    fill(255);
    text("Volver a Intentar", width/2, 420);
    frameCount = 0;
  }
}
void reiniciar() {
  if (B.botonPressed(mouseX, mouseY, 465, 355, 270, 50)&& estado.equals("perder")) { 
    estado = "Juego";
    vidas = 3;
    lombrices = 0;
    lombriz.setPosition(1100, 500);
    lombriz2.setPosition(600, 500);
    lombriz3.setPosition(400, 100);
    mundo.add(lombriz3);
    mundo.add(lombriz2);
    mundo.add(lombriz);
    halcon.setPosition(1200, random(40, 250));
  }
  if (B.botonPressed(mouseX, mouseY, 465, 385, 270, 50)&& estado.equals("ganar")) { 
    estado = "Juego";
    vidas = 3;
    lombrices = 0;
    mundo.add(lombriz3);
    mundo.add(lombriz2);
    mundo.add(lombriz);
    lombriz.setPosition(1100, 500);
    lombriz2.setPosition(600, 500);
    lombriz3.setPosition(400, 100);
    halcon.setPosition(1200, random(40, 250));
  }
}
}
