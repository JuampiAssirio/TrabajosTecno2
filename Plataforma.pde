class Plataforma {
  FBox plataforma;

  Plataforma(float _w, float _h) {
    plataforma = new FBox(_w, _h);
  }

  void dibujarPl(float _x, float _y) {
    plataforma.setPosition(_x, _y);
    plataforma.setName("plataforma");
    plataforma.setStatic(true);
    plataforma.setFill(255, 255, 0);
    //plataforma.setPosition(width/2, height/2);
    plataforma.setRestitution(2);
    //mundo.add(caja);
  }
}
