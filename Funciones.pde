class Funciones {
  int  s, m;
  PImage fganar, fperder, Tutorial, Reloj;
  PFont fuente;
  boolean sonido, tope;
  String estado;
  //Clases
  Boton B;
  Juego J;

  Funciones() {

    B = new Boton();
    s = 0;
    m = 0;

    
    fuente =   loadFont("Arial-BoldItalicMT-48.vlw");
    fganar = loadImage("fganar.png");
    fganar.resize(1200, 700);
    fperder = loadImage("fperder.png");
    fperder.resize(1200, 700);
    Reloj = loadImage("Reloj.png");
    Reloj.resize(110, 60);
    sonido = true;
    tope = false;
  }
  void contador() {
    image(Reloj, 22, 40);
    if (s<=59) {
      if (frameCount % 60 == 0) {
        s = (s+1) ;
      }
      String t = nf(m, 1)+":"+ nf(s, 2);

      textFont(fuente);
      fill(0);
      textSize(30);
      text(t, 50, 85);
    } else { 
      m = m + 1;
      s = 0;
      String t = nf(m, 1)+":"+ nf(s, 2);
      text(t, 50, 85);
    }
  }
  void avanzar() {
    if (sonido == true) {
      // musicFondo.loop();
      musicFondo.amp(0.1);
      
      sonido = false;
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

  void perder() {
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

  void ganar() {
    
      image(fganar, 0, 0);         
      textSize(30);
      B.boton(75, 325, 270, 50);
      fill(255);
      text("Volver a Intentar", 87, 363);
      if (sonido == true) {
        SoundGanar.play();
        SoundGanar.amp(0.3);
        sonido = false;
      }
      musicFondo.stop();
      Soundhalcon.stop();
    }
  }
