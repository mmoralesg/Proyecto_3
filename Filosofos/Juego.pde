///////////////////// JUEGO

//Vida de personajes
int vidaA, vidaB;

void Juego()
{
  background(180); 
  textSize(15);
  text("Q: Ataque A", 150, 500);           //Selecciona el ataque que desas aplicar
  text("W: Ataque B", 150, 520);
  text("E: Especial", 150, 540);

  text("A: Ataque A", 650, 500);
  text("S: Ataque B", 650, 520);
  text("D: Especial", 650, 540);

  switch(A)                                //Personaje seleccionado por jugador 1
  {
  case 1:
    Saussure.Dibujar(100, 200);            //Dibuja de nuevo al personaje seleccionado
    Saussure.Vida(100, 100, vidaA);        //Dibuja la barra de vida del personaje seleccionado
    break;

  case 2:
    Heidegger.Dibujar(100, 200);
    Heidegger.Vida(100, 100, vidaA);
    break;

  case 3:
    Marx.Dibujar(100, 200);
    Marx.Vida(100, 100, vidaA);
    break;

  case 4: 
    Freud.Dibujar(100, 200);
    Freud.Vida(100, 100, vidaA);
    break;

  case 5:
    Sartre.Dibujar(100, 200);
    Sartre.Vida(100, 100, vidaA);
    break;
  }

  switch(B)
  {
  case 1:
    Saussure.Dibujar(600, 200);
    Saussure.Vida(600, 100, vidaB);
    break;

  case 2:
    Heidegger.Dibujar(600, 200);
    Heidegger.Vida(600, 100, vidaB);
    break;

  case 3:
    Marx.Dibujar(600, 200);
    Marx.Vida(600, 100, vidaB);
    break;

  case 4: 
    Freud.Dibujar(600, 200);
    Freud.Vida(600, 100, vidaB);
    break;

  case 5:
    Sartre.Dibujar(600, 200);
    Sartre.Vida(600, 100, vidaB);
    break;
  }

  println(vidaA + " " + vidaB);

  if (turno == 1 && keyPressed)        //Cuando es turno del jugador 1 y presionamos la tecla...
  {
    switch(key)
    {
    case 'q':
      vidaB = vidaB - atqA;            //Resta a la vida del personaje 2 lo del Ataque A
      turno = 2;
      break;

    case 'w':
      vidaB = vidaB - atqB;
      turno = 2;
      break;

    case 'e':
      vidaB = vidaB - atqC;
      turno = 2;
      break;
    }
  }

  if (turno == 2 && keyPressed)
  {
    switch(key)
    {
    case 'a':
      vidaA = vidaA - atqAA;
      turno = 1;
      break;

    case 's':
      vidaA = vidaA - atqBB;
      turno = 1;
      break;

    case 'd':
      vidaA = vidaA - atqCC;
      turno = 1;
      break;
    }
  }

  if (vidaA <= 0 || vidaB <= 0)
  {
    Final();
  }
}