class Circulos {
  float x, y;
  float diam;
  color colorRelleno;
  float sensibilidad = 150;
  boolean seMueve2 = false;
  //boolean HaySonido;
  Dir_y_Vel mouse;
  GestorSenial gestorAmp;
  GestorSenial gestorPitch;
  float f = 0.9;
  float minimoAmp = 45;
  float maximoAmp = 100;
  float minimoPitch = 60;
  float maximoPitch = 96;

  Circulos() {
    x = 600;
    y = 700;
    diam = 270;
    colorRelleno = color(0, 255, 0);
    mouse = new Dir_y_Vel();
    gestorAmp = new GestorSenial(minimoAmp, maximoAmp, f);
    gestorPitch = new GestorSenial(minimoPitch, maximoPitch, f);
  }





  void dibujar() {
    pushStyle();

    /*Circulo[16].resize(545, 545);
     image(Circulo[16], 590, 530);
     Circulo[0].resize(500, 500);
     image(Circulo[0], g.xint, 480);
     Circulo[1].resize(500, 500);
     image(Circulo[1], g.x_int, 480);
     Circulo[2].resize(700, 700);
     image(Circulo[2], g.xint2, 670);
     Circulo[3].resize(700, 700);
     image(Circulo[3], g.x_int2, 640);
     Circulo[4].resize(450, 450);
     image(Circulo[4], g.xint3, 240
     Circulo[5].resize(450, 450);
     image(Circulo[5], g.x_int3, 240);*/
    Circulo[8].resize(800, 700);
    image(Circulo[8], 700, 200);
    Circulo[9].resize(800, 700);
    image(Circulo[9], 1000, 580);





    //--- Circulos Peques ---//
    imageMode(CENTER);
    /*Circulo[6].resize(362, 350);
     image(Circulo[6], 380, 250, mouseX, mouseX);
     Circulo[7].resize(400, 380);
     image(Circulo[7], 130, 100, mouseX, mouseX);
     Circulo[10].resize(450, 500);
     image(Circulo[10], 310, 370, mouseX, mouseX);*/
    Circulo[11].resize(300, 370);
    image(Circulo[11], 350, 100);
    Circulo[12].resize(700, 650);
    image(Circulo[12], 500, 600);
    Circulo[13].resize(450, 400);
    image(Circulo[13], 700, 450);
    Circulo[14].resize(700, 650);
    image(Circulo[14], 740, 650);
    Circulo[15].resize(720, 650);
    image(Circulo[15], 480, 370);






    //--Sistema Solar--//
    float angulo = radians(frameCount);
    float dist1 = 130;
    float dist2 = 190;

    float x = dist1*cos(angulo);
    float y = dist1*sin(angulo);
    float x1 = dist2*cos(angulo*0.4);
    float y1 = dist2*sin(angulo*0.4);

 
    Circulo[16].resize(545, 545);
    image(Circulo[16], 590, 530);//centro (sol)
    translate(590, 530);
    Circulo[12].resize(700, 650);
    image(Circulo[12], x, y);
    Circulo[14].resize(700, 650);
    image(Circulo[14], x1, y1);

    //  println(frameCount);


    popStyle();
  }

  void Fondo() {

    //  println(mouse.direccionX());
    //  println("seMueve2",seMueve2);




    mouse.calcularTodo(mouseX, mouseY);
    seMueve2 = false;
    image(Fondo, width/2, height/2);

    if (mouse.direccionX()>sensibilidad) {
      seMueve2 = true;
    }
    pushStyle();

    popStyle();
    /*if (mouseX<width && seMueve2 == true) {
     tint(random(255), random(255), random(255));
     } else if (seMueve == false && frameCount>10) {
     tint(255);
     }*/
  }
}
