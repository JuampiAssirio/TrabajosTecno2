class GestorDeInteracion {
  Dir_y_Vel mouse;
  boolean seMueve;
  float x_int, xint;
  float dir, vel;
  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
    x_int = 238;
    xint = 180;
  }


  void mover() {
    println(seMueve);
    println(mouse.velocidad());

    mouse.calcularTodo(mouseX, mouseY);
    seMueve = false;
    float sensibilidad = 10; //con 2 es una buena opción
    if (mouse.direccionY()>sensibilidad) {
      seMueve = true;
    }
    if (mouseY<height && seMueve == true) {
      x_int++;
      xint--;
    } else if (seMueve == false && frameCount == 500) { //si le sacamos el framecount puede servir para la vos.
      x_int = 238;
      xint = 180;
    }
  }
}
