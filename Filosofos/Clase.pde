

class Filosofo
{
  String nombre;
  int vida;
  int ataqueA;
  int ataqueB;
  int especial;
  int dibujo;
  float posX, posY;
  float sc;
  PImage img;

  Filosofo (String nombre_, int vida_, int ataqueA_, int ataqueB_, int especial_, int dibujo_)
  {
    nombre=nombre_;
    vida=vida_;
    ataqueA=ataqueA_;
    ataqueB=ataqueB_;
    especial=especial_;
    dibujo=dibujo_;
  }

  //Dibuja al personaje
  void Dibujar(float x, float y)
  {
    posX = x;
    posY = y;
    sc = 0.3;

    pushMatrix();
    translate(posX, posY);
    textSize(70);
    textAlign(CENTER);
    scale(sc);
    switch(dibujo)
    {
    case 0: 
      img = loadImage("Personajes/Saussure.png");
      image(img, 0, 100);
      text(nombre, 250, height); 
      break;
    case 1:
      img = loadImage("Personajes/Heidegger.png");
      image(img, 0, 100);
      text(nombre, 250, height);
      break;
    case 2:
      img = loadImage("Personajes/Marx.png");
      image(img, 0, 100);
      text(nombre, 250, height);
      break;
    case 3:
      img = loadImage("Personajes/Freud.png");
      image(img, 0, 100);
      text(nombre, 250, height);
      break;
    case 4:
      img = loadImage("Personajes/Sartre.png");
      image(img, 0, 100);
      text(nombre, 250, height);
      break;
    }
    popMatrix();
  }

  //Dibuja la barra de vida
  void Vida(int x, int y, int largo)
  {
    strokeWeight(2);
    stroke(255, 0, 0);
    rect(x, y, 200, 20);

    fill(255);
    noStroke();
    rect(x, y, largo*20, 20);
  }
}