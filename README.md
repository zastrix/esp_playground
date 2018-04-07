# ESP32 Notes

Using the [ExpressIF IDF ][1] the goal of this project is to learn more about the ESP32, writing applications that use FreeRTOS tasks and ESP system's API (no arduino business here).  I'll be following the [ExpressIF Guide][2] as well as learning from Neil Kolban's [youtube][3] channel.

[1]: https://github.com/espressif/esp-idf
[2]: https://esp-idf.readthedocs.io/en/latest/get-started/index.html#get-started-get-esp-idf
[3]: https://www.youtube.com/channel/UChKn_BlaVrMrhEquPNI6HuQ



### Development Environment Setup

Edit ~/.bash_profile (or ~/.bashrc on linux) to set paths for the Expressif-IDF (change the paths to match your directory structure):

```bash
# For ESP32 development
alias get_esp="export PATH=$PATH:$HOME/workspace/esp_playground/xtensa-esp32-elf/bin; export IDF_PATH=$HOME/workspace/esp_playground/esp-idf; echo got it!"
```

If using the same shell window, don't forget to $source ~/.bash_profile to make this alias available.



#### Eclipse Setup

[Darkest Dark Theme](https://marketplace.eclipse.org/content/darkest-dark-theme)  

[Sublime Text Editor theme](http://www.eclipsecolorthemes.org/?view=theme&id=66)

Set fonts to Menlo, 12pt.

> By the way, OSX has this awesome built-in dropper tool that you can use to read colors from the screen! Pop open spotlight search and type 'digital color meter'.



#### Setup for flashing sample program

1. Find the serial port your ESP is connected to (/dev/cu.SLAB_USBtoUART in my case) and set this in the $make menuconfig of your project.
2. cd to your project directory (hello_world in my case) and type $make flash monitor.
   1. after building and flashing the ESP, you'll see the trace printed to the console. Press ctrl+] to escape.



----

![Image result for ESP32 oled pinout](https://cdn.instructables.com/FAK/RKQ0/J3YPR3IJ/FAKRKQ0J3YPR3IJ.LARGE.jpg)



#### OLED Display

Example code - https://www.hackster.io/johnnyfrx/esp32-with-integrated-oled-wemos-lolin-getting-started-07ac5d

> The OLED display is connected to pins 5 and 4 as an I2C device. Most of the oled drivers for the 1306 OLED module on arduino use different pins.

DEMO code: https://github.com/ThingPulse/esp8266-oled-ssd1306/tree/master/examples/SSD1306SimpleDemo

I2C example - https://www.youtube.com/watch?v=irtxFEZPRrg



#### Micropython

Setup - https://hackernoon.com/get-on-the-good-foot-with-micropython-on-the-esp32-decdd32c4720

Github - https://github.com/micropython/micropython/tree/master/ports



