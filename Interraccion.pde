class GestorDeInteracion {
  Dir_y_Vel mouse;
  float x_int, xint, xint2, x_int2, xint3, x_int3;
  float dir, vel;
  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
    xint = 197;
    x_int = 268;
    xint2 = 172;
    x_int2 = 260;
    xint3 = 288;
    x_int3 = 158;
  }


  void mover() {
   // println(seMueve);

    mouse.calcularTodo(mouseX, mouseY);
    seMueve = false;
    float sensibilidad = 10; //con 2 es una buena opción 
   
    if (mouse.direccionY()>sensibilidad) {
      seMueve = true;
    }
    /*if (mouseY<height && seMueve == true) {
      x_int++;
      xint--;
      xint2--;
      x_int2++;
      xint3++;
      x_int3--;
    } else if (seMueve == false && frameCount>60) { 
      x_int--;
      xint++;
      xint2++;
      x_int2--;
      xint3--;
      x_int3++;
     
    }*/
    /*if (x_int == 268 & xint == 197) {
      frameCount=0;
    }*/
  }
}
