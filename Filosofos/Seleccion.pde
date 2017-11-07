//PANTALLA PARA SELECCIONAR PERSONAJES
void Seleccion()
{
  background (255);
  if (turno==1)
  {
    text("JUGADOR 1", width/2, 100);
    textSize(20);
    text("Presione 1 - 5 para seleccionar a su personaje", width/2, height-50);
  }

  if (turno==2)
  {
    text("JUGADOR 2", width/2, 100);
    textSize(20);
    text("Presione A - E para seleccionar a su personaje", width/2, height-50);
  }

  Saussure.Dibujar(25, height/2 - 90);
  Heidegger.Dibujar(225, height/2 - 90);
  Marx.Dibujar(425, height/2 - 90);
  Freud.Dibujar(625, height/2 - 90);
  Sartre.Dibujar(825, height/2 - 90);

  //Seleccionar personaje del jugador 1 
  switch(key)
  {
  case '1':
    A = 1;
    turno = 2;
    break;

  case '2':
    A = 2;
    turno = 2;
    break;

  case '3':
    A = 3;
    turno = 2;
    break;

  case '4':
    A = 4;
    turno = 2;
    break;

  case '5':
    A = 5;
    turno = 2;
    break;
  }

  switch(A)
  {
  case 1:
    atqA = Saussure.ataqueA;
    atqB = Saussure.ataqueB;
    atqC = Saussure.especial;
    vidaA = Saussure.vida;
    break;

  case 2:
    atqA = Heidegger.ataqueA;
    atqB = Heidegger.ataqueB;
    atqC = Heidegger.especial;
    vidaA = Heidegger.vida;
    break;

  case 3:
    atqA = Marx.ataqueA;
    atqB = Marx.ataqueB;
    atqC = Marx.especial;
    vidaA = Marx.vida;
    break;

  case 4:
    atqA = Freud.ataqueA;
    atqB = Freud.ataqueB;
    atqC = Freud.especial;
    vidaA = Freud.vida;
    break;

  case 5:
    atqA = Sartre.ataqueA;
    atqB = Sartre.ataqueB;
    atqC = Sartre.especial;
    vidaA = Sartre.vida;
    break;
  }


  //seleccionar personaje de jugador 2
  if (turno == 2)
  {
    switch(key)
    {
    case 'a':
      B = 1;
      pantalla = 2;
      turno = 1;
      break;

    case 'b':
      B = 2;
      pantalla = 2;
      turno = 1;
      break;

    case 'c':
      B = 3;
      pantalla = 2;
      turno = 1;
      break;

    case 'd':
      B = 4;
      pantalla = 2;
      turno = 1;
      break;

    case 'e':
      B = 5;
      pantalla = 2;
      turno = 1;
      break;
    }

    switch(B)
    {
    case 1:
      atqAA = Saussure.ataqueA;
      atqBB = Saussure.ataqueB;
      atqCC = Saussure.especial;
      vidaB = Saussure.vida;
      break;

    case 2:
      atqAA = Heidegger.ataqueA;
      atqBB = Heidegger.ataqueB;
      atqCC = Heidegger.especial;
      vidaB = Heidegger.vida;
      break;

    case 3:
      atqAA = Marx.ataqueA;
      atqBB = Marx.ataqueB;
      atqCC = Marx.especial;
      vidaB = Marx.vida;
      break;

    case 4:
      atqAA = Freud.ataqueA;
      atqBB = Freud.ataqueB;
      atqCC = Freud.especial;
      vidaB = Freud.vida;
      break;

    case 5:
      atqAA = Sartre.ataqueA;
      atqBB = Sartre.ataqueB;
      atqCC = Sartre.especial;
      vidaB = Sartre.vida;
      break;
    }
  }
}