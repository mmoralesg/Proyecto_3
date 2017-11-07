//variable... de tipo Filosofo
Filosofo Freud;
Filosofo Heidegger;
Filosofo Marx;
Filosofo Sartre;
Filosofo Saussure;

//0 = Inicio, 1 = Seleccion, 2 = Juego, 3 = Final
int pantalla;
int turno;

//ataques del jugador 1
int atqA, atqB, atqC;

//ataques del jugador 2
int atqAA, atqBB, atqCC;

//Número de jugador
int A, B;

String nombre[]={"Saussure", "Heidegger", "Marx", "Freud", "Sartre"};

void setup()
{
  background(0);
  frameRate(15);
  size(1000, 700);
  pantalla = 0;
  turno = 1;
  textAlign(CENTER, CENTER);

  //Filosofo(nombre, vida inicial, ataque A, ataque B, ataque especial, dibujo)
  Saussure = new Filosofo("Saussure", 10, 1, 2, 3, 0);
  Heidegger = new Filosofo("Heidegger", 10, 2, 3, 5, 1);
  Marx = new Filosofo("Marx", 10, 3, 3, 5, 2);
  Freud = new Filosofo("Freud", 10, 2, 3, 4, 3);
  Sartre = new Filosofo("Sartre", 10, 5, 5, 6, 4);
}  


void draw()
{
  switch(pantalla)
  {
  case 0:
    Intro();
    break;
  case 1:
    Seleccion();
    break;
  case 2:
    Juego();
    break;
  case 3:
    Final();
    break;
  }
}

// PANTALLA DE INICIO
void Intro ()
{
  background(255);
  fill(0);
  textSize(50);
  text("INICIO", width/2, height/2);
  textSize(10);
  text("Presiona Espacio para continuar", width/2, height/2+40);

  if (key == ' ')
  {
    pantalla=1;
  }
}

// PANTALLA FINAL
void Final()
{
  background(255);
  fill(0);

  if (vidaA <= 0 || vidaB <= 0)
  {
    textSize(50);
    text("FIN", width/2, height/2);
  }

  if (vidaB <= 0)
  {
    textSize(15);
    text("Ganó Jugador 1", width/2, height/2 + 40);
  }

  if (vidaA <= 0)
  {
    textSize(15);
    text("Ganó Jugador 2", width/2, height/2 + 40);
  }
}