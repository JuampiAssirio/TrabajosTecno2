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
    estado = "ganar";
  }
  //*Condicion de ganar
  if (nombre2 == "paloma" && nombre1 == "nido") {
    estado = "ganar";
  }

  //*PERDER VIDAS
  if (nombre1 == "paloma" && nombre2 == "poste1" ||nombre1 == "paloma" && nombre2 == "poste2") {

   // SoundD.play();
   // SoundD.amp(0.5);
  }

  if (nombre2 == "paloma" && nombre1 == "poste1" ||nombre2 == "paloma" && nombre2 == "poste2") {

   // SoundD.play();
  //  SoundD.amp(0.5);
  }
  if (nombre1 == "paloma" && nombre2 == "poste1_") {
    SoundD.play();
    SoundD.amp(0.5);
    choque = true;
  } else choque = false;
  if (choque == true) {
    poste1_.setRestitution(6);
    poste1.attachImage(O.Poste[1]);
  } 
  if (choque == false) {

    poste1.attachImage(O.Poste[0]);
  }

  if (nombre2 == "paloma" && nombre1 == "poste1_") {
    SoundD.play();
    SoundD.amp(0.5);
    Paloma.addForce(10, 100);

    choque = true;
  } else choque = false;
  if (choque == true) {
    poste1_.setRestitution(6);
    poste1.attachImage(O.Poste[1]);
  } 
  if (choque == false) {

    poste1.attachImage(O.Poste[0]);
  }
  
  
  
   if (nombre1 == "paloma" && nombre2 == "poste2_") {
    SoundD.play();
    SoundD.amp(0.5);
    choque = true;
  } else choque = false;
  if (choque == true) {
    poste2_.setRestitution(6);
    poste2.attachImage(O.Poste[2]);
  } 
  if (choque == false) {

    poste2.attachImage(O.Poste[0]);
  }

  if (nombre2 == "paloma" && nombre1 == "poste2_") {
    SoundD.play();
    SoundD.amp(0.5);
    Paloma.addForce(10, 100);

    choque = true;
  } else choque = false;
  if (choque == true) {
     poste2_.setRestitution(6);
    poste2.attachImage(O.Poste[2]);
  } 
  if (choque == false) {

    poste2.attachImage(O.Poste[0]);
  }
  
  
  
  
  if (nombre1 == "granizo" && nombre2 == "poste1_") {
    mundo.remove(body1);
  }
  if (nombre2 == "granizo" && nombre1 == "poste1_") {
    mundo.remove(body2);
  }
  if (nombre1 == "granizo" && nombre2 == "poste1") {
    mundo.remove(body1);
  }
  if (nombre2 == "granizo" && nombre1 == "poste1") {
    mundo.remove(body2);
  }
  if (nombre1 == "granizo" && nombre2 == "poste2_") {
    mundo.remove(body1);
  }
  if (nombre2 == "granizo" && nombre1 == "poste2_") {
    mundo.remove(body2);
  }
  if (nombre1 == "granizo" && nombre2 == "poste2") {
    mundo.remove(body1);
  }
  if (nombre2 == "granizo" && nombre1 == "poste2") {
    mundo.remove(body2);
  }
  
  
  
  if(nombre1== "halcon" && nombre2 == "granizo"){
    mundo.remove(body2);
  }
    if(nombre2== "halcon" && nombre1 == "granizo"){
    mundo.remove(body1);
  }
  /* if (nombre1 == "paloma" && nombre2 == "halcon" ) {
   mundo.remove (body1);
   if (sonido == true) {  
   SoundD.play();
   SoundD.amp(0.5);
   }
   }
   
   if (nombre2 == "paloma" && nombre1 == "halcon" ) {
   mundo.remove (body2);
   if (sonido == true) {  
   SoundD.play();
   SoundD.amp(0.5);
   }
   }
   //*GANAR PUNTOS
   if (nombre1 == "paloma" && nombre2 == "lombrizCafe" ) {
   J.lombrices++;
   mundo.remove(body2);
   } else if (nombre2 == "paloma" && nombre1 == "lombrizCafe" ) {
   J.lombrices++;
   mundo.remove(body1);
   }
   if (nombre1 == "paloma" && nombre2 == "lombrizCigarrillo" ) {
   J.lombrices++;
   mundo.remove(body2);
   } else if (nombre2 == "paloma" && nombre1 == "lombrizCigarrillo" ) {
   J.lombrices++;
   mundo.remove(body1);
   }
   if (nombre2 == "paloma" && nombre1 == "lombrizCiega" ) {
   J.lombrices++;
   mundo.remove(body1);
   }*/

  /* else if (nombre2 == "paloma" && nombre1 == "lombrizCiega" ) {
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
   if (nombre1 == "paloma" && nombre2 == "poste1_" || nombre2 == "poste2_" || nombre2 == "poste3_") {
   mundo.add (body1);
   }
   
   if (nombre2 == "paloma" && nombre1 == "poste1_" || nombre1 == "poste2_" || nombre1 == "poste3_") {
   mundo.add (body2);
   }*/
  float angulo = radians(80);
  float vx = -1500 * cos( angulo );
  float vy = -800 * sin( angulo );
  if (nombre1== "paloma" && nombre2 == "nube1") {
    Paloma.setVelocity(vx, vy );
  }
  if (nombre2== "paloma" && nombre1 == "nube1") {
    Paloma.setVelocity(vx, vy );

  }

  if (nombre1== "paloma" && nombre2 == "nube2") {
    Granizo = true;    
    mundo.remove(body2);
  }


  if (nombre2== "paloma" && nombre1 == "nube2") {
    Granizo = true;
    mundo.remove(body1);
  }
}
/* void halcon() {
 if (tope == false && halcon.getX()>100) {
 halcon.setVelocity(vx, vy);
 halcon.attachImage(Halcon);
 }
 if (tope == false && halcon.getX()  < 100) {
 tope = true;
 }
 if (tope == true && halcon.getX()  <width) {
 halcon.attachImage(Halconb);
 halcon.setVelocity(vx_, vy);
 }
 if (tope == true && halcon.getX()  > 1100) {
 tope = false;
 Soundhalcon.play();
 Soundhalcon.amp(0.1);
 }
 }*/
