/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include "/Users/dgmiller/esp/esp-idf/components/freertos/include/freertos/FreeRTOS.h"
#include "/Users/dgmiller/esp/esp-idf/components/freertos/include/freertos/task.h"
#include "/Users/dgmiller/esp/esp-idf/components/esp32/include/esp_system.h"
#include "/Users/dgmiller/esp/esp-idf/components/spi_flash/include/esp_spi_flash.h"
#include "../../../esp-idf/components/esp32/include/esp_system.h"

// OLED stuff
#include "/Users/dgmiller/esp/esp-idf/components/driver/include/driver/i2c.h"
#include "/Users/dgmiller/esp/projects/hello_world/main/oled/SSD1306Wire.h"
#include "/Users/dgmiller/esp/projects/hello_world/main/oled/OLEDDisplayUi.h"

void app_main()
{

    // setup
    printf("~~~~ Setup\n");


    __uint32_t counter = 0;
    esp_chip_info_t chip_info;
    esp_chip_info(&chip_info);

    esp_chip_model_t model = chip_info.model & CHIP_ESP32;

    // initialize stuff
    printf("~~~~ Initialize\n");

    printf("This is a rev %d ESP32 with:\n", chip_info.revision);
    printf("- %d CPU cores\n", chip_info.cores);
    printf("- %s\n", (chip_info.features & CHIP_FEATURE_BT) ? "Bluetooth": "No Bluetooth");
    printf("- %s\n", (chip_info.features & CHIP_FEATURE_BLE) ? "Bluetooth Low Energy": "No BLE");
    printf("- %d MB %s flash\n", spi_flash_get_chip_size() / (1024 * 1024),
           (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");

    // task loop
    printf("~~~~ Entering Task Loop\n");

    for (;;) {
        printf("%d\n", counter);
        vTaskDelay(500 / portTICK_PERIOD_MS);
        counter++;
    }

    //task exit
    printf("~~~~ Exiting Task Loop\n");

    fflush(stdout);
    esp_restart();


}
