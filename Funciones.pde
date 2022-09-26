class Funciones {
  int  s;
  PImage fganar, fperder;
  PFont fuente;
  boolean sonido, tope;
  String estado = "Juego";
  //Clases
  //Boton B;
  Juego J;

  Funciones() {

    //B = new Boton();
    s = 0;
    fuente =   loadFont("Arial-BoldItalicMT-48.vlw");
    fganar = loadImage("fganar.png");
    fganar.resize(1200, 700);
    fperder = loadImage("fperder.png");
    fperder.resize(1200, 700);
    sonido = true;
    tope = false;
  }
  void contador() {
    if (estado=="Juego") {
      if (frameCount % 60 == 0) {
        s = (s+1) ;
      }
      textFont(fuente);
      fill(0);
      textSize(50);
      text (s, 290, 85);
    }
  }
  void borrarGranizo() {
    ArrayList <FBody> cuerpos = mundo.getBodies();
    for (FBody granizos : cuerpos) {
      String nombre_ = granizos.getName();
      if (nombre_ != null) {
        if (nombre_.equals("granizo")) {
          if (granizos.getY() > height -50) {
            mundo.remove(granizos);
          }
        }
      }
    }
  }
}
/* void perder() {
 if (vidas < 1 || s == 0) {
 estado = "perder";
 if (estado=="perder") {        
 image(fperder, 0, 0);           
 textSize(30);
 B.boton(75, 325, 270, 50);
 fill(255);
 text("Volver a Intentar", 87, 363);
 if (sonido == true) {
 Soundperder.play();
 Soundperder.amp(0.3);
 sonido = false;
 }
 Soundhalcon.stop();
 musicFondo.stop();
 }
 }
 }
/*void ganar() {
 if (J.estado == "ganar") {  
 image(fganar, 0, 0);         
 textSize(30);
 B.boton(75, 325, 270, 50);
 fill(255);
 text("Volver a Intentar", 87, 363);
 frameCount = 0;
 if (sonido == true) {
 SoundGanar.play();
 SoundGanar.amp(0.3);
 sonido = false;
 }
 musicFondo.stop();
 Soundhalcon.stop();
 }*/
