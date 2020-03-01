import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
GPIO.setup(29, GPIO.OUT, initial=GPIO.LOW)

while True:
    GPIO.output(29, GPIO.HIGH)
    #time.sleep(0.000001)
    GPIO.output(29, GPIO.LOW)
    #time.sleep(0.000001)
