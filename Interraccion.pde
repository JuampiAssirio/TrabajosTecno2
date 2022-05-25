class GestorDeInteracion {
  Dir_y_Vel mouse;
  float xcir, xcir2, xcir3, xcir4, x_int, xint, xint2, x_int2, xint3, x_int3;
  float dir, vel;
  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
    xint = 217;
    x_int = 262;
    xint2 = 172;
    x_int2 = 260;
    xint3 = 288;
    x_int3 = 158;
    xcir = 720;
    xcir2 = 362;
    xcir3 = 400;
    xcir4 = 450;
  }


  void mover() {
    println(Cirpeq);

    mouse.calcularTodo(mouseX, mouseY);
    seMueve = false;
    Cirpeq = false;

    float sensibilidad = 10; //con 2 es una buena opción 

    if (mouse.direccionY()>sensibilidad) {
      seMueve = true;
    }

    if (mouseY<height && seMueve == true) {

      xint--;
      xint2--;
      x_int2++;
      xint3++;
      x_int3--;
    } else if (seMueve == false && frameCount>60) { 

      xint++;
      xint2++;
      x_int2--;
      xint3--;
      x_int3++;
    }
    if (mouse.direccionX()>sensibilidad) {
      Cirpeq = true;
    }
    if (mouseX<width && Cirpeq == true) {
      xcir+=20;
      xcir2+=10;
      xcir3+=10;
      xcir4+=10;
    } else if (Cirpeq == false && frameCount>60) {
      xcir-=20;
      xcir2-=10;
      xcir3-=10;
      xcir4-=10;
    }
    if (x_int == 262 & xint == 217) {
     frameCount = 0;
    }
  }
}
