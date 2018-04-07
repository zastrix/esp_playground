# ESP32 Project Notes

### Setting up and integrating the ESP-IDF with Eclipse

Following instructions from Neil Kolban's setup [video](https://www.youtube.com/watch?v=bYh2w0HzS7s).

1. $ git clone https://github.com/espressif/esp-idf-template.git myapp

2. $ get_esp

   1. alias setup in the previous folder's readme file to set the esp-idf paths

3. $ make menuconfig

   1. change the serial port to /dev/cu.SLAB_USBtoUART

4. overlay eclipse project into myapp

   1. right click in Project Explorer > new C/C++ project > C Managed Build
   2. choose Makefile Project > Empty Project
   3. navigate to the esp_playground/projects folder, enter the project name 'myapp'. click Finish

5. tell eclipse about the esp-idf environment

   1. right click myapp in project explorer > properties > C\C++ build 

   2. uncheck 'Use default build command'

   3. click 'Environment' on the left, add the following (note the $HOME variable does *not* expand. use full paths here.):

      1. ```bash
         IDF_PATH = $HOME/workspace/esp_playground/esp-idf
         PATH = $PATH:$HOME/workspace/esp_playground/xtensa-esp32-elf/bin
         ```

6. Tell eclipse about include directories

   1. click 'C/C++ general' on the left > 'Paths and Symbols'

      1. Select 'GNU C' and add the following paths:

      2. ```
         ${IDF_PATH}/components/esp32/include
         ${IDF_PATH}/components/newlib/include
         ${IDF_PATH}/components/freertos/include
         ${IDF_PATH}/components/nvs_flash/include
         ${IDF_PATH}/components/driver/include
         ${IDF_PATH}/components/log/include
         ```

      3. Finally, add the workspace directory (be sure to check the 'is a workspace path' option):

      4. ```
         /myapp/build/include
         ```

7. tell eclipse about the targets in the makefile

   1. right click myapp in the Project Explorer > build targets > create
   2. enter target name 'all' and click OK

8. Click on console view (to see output from the build process) , in the Project Explorer right click on 'all' under 'build targets' and select 'Build Target'

9. Rejoice as eclipse builds the ESP binary



Note: At this point you can right click on the .c files and rebuild the index to clear the code highlighting errors.

---

#### Flashing

1. Right click 'Build Targets' and create a build target called 'flash'
2. Build flash!