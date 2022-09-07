String conseguirNombre(FBody cuerpo) {
  String nombre = "nada";
  if (cuerpo !=null)
  {
    nombre = cuerpo.getName();
    if (nombre == null) {
      nombre = "nada";
    }
  }
  return nombre;
}
void contactStarted( FContact contacto ) {
  FBody body1 = contacto.getBody1();
  FBody body2 = contacto.getBody2();
  if (body1.getName() != null && body2.getName() != null) {

    println("body1:" + body1.getName());
    println("body2:" + body2.getName());
  }
  String nombre1 = conseguirNombre(body1);
  String nombre2 = conseguirNombre(body2);

  //*Condicion de ganar
  if (nombre1 == "paloma" && nombre2 == "nido") {
    mundo.remove(body1);
    estado = "ganar";
  }
  //*Condicion de ganar
  if (nombre2 == "paloma" && nombre1 == "nido" && lombrices ==3) {
    estado = "ganar";
    mundo.remove(body2);
  }

  //*PERDER VIDAS
  if (nombre1 == "paloma" && nombre2 == "poste1" || nombre2 == "poste2") {
    J.perdervida();
    mundo.remove (body1);
  }

  if (nombre2 == "paloma" && nombre1 == "poste1" || nombre1 == "poste2") {
    J.perdervida();
    mundo.remove (body2);
  }
  if (nombre1 == "paloma" && nombre2 == "halcon" ) {
    J.perdervida();
    mundo.remove (body1);
  }

  if (nombre2 == "paloma" && nombre1 == "halcon" ) {
    J.perdervida();
    mundo.remove (body2);
  }

  //*GANAR PUNTOS
  if (nombre1 == "paloma" && nombre2 == "lombrizCafe" ) {
    lombrices++;
    mundo.remove(body2);
  }

  if (nombre2 == "paloma" && nombre1 == "lombrizCafe" ) {
    lombrices++;
    mundo.remove(body1);
  }
  if (nombre1 == "paloma" && nombre2 == "lombrizCigarrillo" ) {
    lombrices++;
    mundo.remove(body2);
  }

  if (nombre2 == "paloma" && nombre1 == "lombrizCigarrillo" ) {
    lombrices++;
    mundo.remove(body1);
  }
  if (nombre1 == "paloma" && nombre2 == "lombrizCiega" ) {
    lombrices++;
    mundo.remove(body2);
  }

  if (nombre2 == "paloma" && nombre1 == "lombrizCiega" ) {
    lombrices++;
    mundo.remove(body1);
  }


  //REAPARICION PALOMA
  if (nombre1 == "paloma" && nombre2 == "halcon" ) {
    mundo.add (body1);
  }

  if (nombre2 == "paloma" && nombre1 == "halcon" ) {
    mundo.add (body2);
  }

  if (nombre1 == "paloma" && nombre2 == "poste1" || nombre2 == "poste2") {
    mundo.add (body1);
  }

  if (nombre2 == "paloma" && nombre1 == "poste1" || nombre1 == "poste2") {
    mundo.add (body2);
  }
}
