import fisica.*;
import processing.sound.*;
SoundFile Soundhalcon, musicFondo, Soundperder, SoundGanar, SoundD;

FWorld mundo;
Funciones F;
Juego J;

Paloma P;
Obstaculos O;
FBox  nube1, nube2, catapulta, nido, halcon, lombriz, lombriz2, lombriz3, poste1, poste2, poste3, arbol, poste1_, poste2_, poste3_, Paloma;
FBody body1, body2;
boolean Granizo = false;
PFont fuente;

void setup() {
  size(1200, 700);
  Fisica.init(this);

  Soundhalcon = new SoundFile(this, "eaglesound.mp3");
  musicFondo = new SoundFile(this, "musicafondo.mp3");
  Soundperder = new SoundFile(this, "perder.mp3");
  SoundGanar = new SoundFile(this, "ganar.mp3");
  fuente =   loadFont("Arial-BoldItalicMT-48.vlw");
  //birdSound = new SoundFile(this, "birdSound.mp3");
  SoundD = new SoundFile(this, "SonidoDaño.mp3");

  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 10));
  mundo.setGravity(0, 800);
  J = new Juego();
  F = new Funciones();
  P = new Paloma();
  O = new Obstaculos();
  musicFondo.play();
  musicFondo.amp(0.1);
  O.dibujarObs();
}

void draw() {
  println(P.izqPresionado);

  J.dibujarJuego();
  mundo.step();
  mundo.draw();
}
/*void mousePressed() {
  J.reiniciar();
}*/

void keyPressed () {
  P.actualizar();
  if (key == 'a') {
    P.izqPresionado = true;
  }
  if (key == 'd') {
    P.derPresionado = true;
  }

  if (key == 'w') {
    P.volarPresionado = true;
  }
}



/*void keyReleased() {
  if (key == 'a') {
    P.izqPresionado = false;
  }
  if (key == 'd') {
    P.derPresionado = false;
  }
  if (key == 'w') {
    P.volarPresionado =false;
  }
}*/
