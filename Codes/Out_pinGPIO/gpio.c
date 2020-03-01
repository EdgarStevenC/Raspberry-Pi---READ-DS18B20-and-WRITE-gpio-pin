#include <wiringPi.h>
#include <stdio.h>

#define gpiopin 21

int wiringPiSetup()
{
	pinMode(gpiopin, OUTPUT);
}

int main(void)
{
	while(1)
	{
		digitalWrite(gpiopin, LOW);
		delay(100);
		digitalWrite(gpiopin, HIGH);
		delay(100);
	}

	return 0;
}
