import fisica.*;
FWorld mundo;
Paloma p;

void setup() {
  size (1300, 750);
  Fisica.init(this);
  p = new Paloma();




  mundo = new FWorld();
  mundo.setEdges(color(0, 150, 255, 100));
  mundo.setGravity(0, 1000);

  p.dibujarP();
  p.inicializar(40, height * 0.75);
}


void draw() {
  background(255);

  p.actualizar();

  mundo.step();
  mundo.draw();
}

void keyPressed () {
  if (key == 'a') {
    p.izqPresionado = true;
    
  }
  if (key == 'd') {
    p.derPresionado = true;
  }

  if (key == 'w') {
    p.volarPresionado = true;
  }
}


void keyReleased() {
  if (key == 'a') {
    p.izqPresionado = false;
  }
  if (key == 'd') {
    p.derPresionado = false;
  }
  if (key == 'w') {
    p.volarPresionado =false;
  }
}
