class Circulos {
  float diam;
  color colorRelleno;
  float sensibilidad = 150;
  boolean seMueve2 = false;
  Dir_y_Vel mouse;

  Circulos() {

    diam = 270;
    colorRelleno = color(0, 255, 0);
    mouse = new Dir_y_Vel();
  }





  void dibujar() {
    pushStyle();
    float angulo = radians(mouseY);
    float angulogr = radians(mouseX);
    float dist1 = 130;
    float dist2 = 190;
    float dist3 = 300;
    float dist4 = 220;

    float x = dist1*cos(angulo);
    float y = dist1*sin(angulo-0.8);
    float x1 = dist2*cos(angulo+1);
    float y1 = dist2*sin(angulo+0.7);
    float x2 = dist3*cos(angulogr*0.2);
    float y2 = dist3*sin(angulogr*0.2);
    float x3= dist4*cos(angulogr*0.5);
    float y3 = dist4*sin(angulogr*0.5);



    Circulo[2].resize(700, 700);
    image(Circulo[2], g.xint2, 670);
    Circulo[3].resize(700, 700);
    image(Circulo[3], g.x_int2, 640);
    Circulo[4].resize(450, 450);
    image(Circulo[4], 288, 240);
    Circulo[5].resize(450, 450);
    image(Circulo[5], 158, 240);
    Circulo[8].resize(800, 700);
    image(Circulo[8], 700, 200);
    //Circulo[9].resize(800, 700);
   // image(Circulo[9], 1000, 580);





    //--- Circulos Peques ---//
    imageMode(CENTER);
    Circulo[1].resize(720, 720);    
    image(Circulo[1], 217, 672, g.xcir, g.xcir);
    pushMatrix();


    popMatrix();

    Circulo[11].resize(300, 370);
    image(Circulo[11], 350, 100);
    Circulo[15].resize(720, 650);
    image(Circulo[15], 480, 370);

    //--Sistema Solar--//


    println(mouseX, mouseY);
    pushMatrix();
    translate(217, 220);
    Circulo[0].resize(680, 580);
    image(Circulo[0], x2, y2);
    popMatrix();
    Circulo[16].resize(545, 545);
    image(Circulo[16], 590, 530);//centro (sol)
    pushMatrix();
    translate(590, 540);
    Circulo[13].resize(450, 400);
    image(Circulo[13], x, y);
    popMatrix();
    Circulo[17].resize(116, 116);
    image(Circulo[17], 590, 539);//centro (sol)
    pushMatrix();
    translate(545, 545);
    Circulo[15].resize(720, 650);
    image(Circulo[15], x3, y3);
    popMatrix();
    pushMatrix();
    translate(590, 530);
    Circulo[14].resize(700, 650);
    image(Circulo[14], x1, y1);
    popMatrix();
    pushMatrix();
    translate(220, 220);
    Circulo[10].resize(450, 500);
    image(Circulo[10], x1, -y1, g.xcir4, g.xcir4);
    Circulo[7].resize(400, 380);    
    image(Circulo[7], x1, y1, g.xcir3, g.xcir3);
    //Circulo[6].resize(362, 350);
    //image(Circulo[6], x3, y3, g.xcir2, g.xcir2);
    popMatrix();


    popStyle();
  }

  void Fondo() {

    //  println(mouse.direccionX());
    //  println("seMueve2",seMueve2);
    mouse.calcularTodo(mouseX, mouseY);
    seMueve2 = false;


    if (mouse.direccionX()>sensibilidad) {
      seMueve2 = true;
    }
    pushStyle();
    image(Fondo, width/2, height/2);
    popStyle();
    /* if (mouseX<width && seMueve2 == true) {
     tint(random(255), random(255), random(255));
     } else if (seMueve == false && frameCount>10) { 
     tint(255);
     }*/
  }
}
