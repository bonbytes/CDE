/* 
 * Vorgabe für Start/Stop-Button (Interrupt-basiert)
 */

#include <iostream>
#include <pigpio.h>
#include "pins.h"

bool buttonPressed = false;
bool go = false;

void buttonISRCallback()
{
	buttonPressed = true;
}

/* Schlafen für s Sekunden... */
void sleep(double s)
{
	// TODO
}

/* Ein vollständiger Schritt nach vorn */
void forwards()
{
	// TODO
}

/* Ein vollständiger Schritt nach hinten */
void backwards()
{
	// TODO
}

/* Servos zu Position "Mitte" */
void stop()
{
	// TODO
}

/* Servos deaktivieren */
void off()
{
	// TODO
}


/* main */
int main(int argc, char** argv)
{
	if(gpioInitialise() < 0) 
	{
		return -1;
	}
		
	/*              Pin      Trigger  Timeout     Function(-pointer) */
	gpioSetISRFunc(BUTTON, RISING_EDGE, 0, (gpioISRFunc_t)buttonISRCallback); // Button-Interrupt initialisieren
	
	while(true) 
    {
		if(go == true)
		{
			forwards();
		}
		else
		{
			sleep(0.1);	// CPU-Aktivität reduzieren
		}
		
		if(buttonPressed == true)
		{
			if(go == true)
			{
				stop();
				sleep(0.5); // Zeit geben, um die Position sicher zu erreichen
				off();
			}
			
			sleep(0.1);	// Tastenprellen abfangen
			
			go = !go;
			buttonPressed = false;
		}
	}
	
	gpioTerminate();
	return 0;
}
