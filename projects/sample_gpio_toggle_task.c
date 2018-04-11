#include "freertos/FreeRTOS.h"
#include "esp_wifi.h"
#include "esp_system.h"
#include "esp_event.h"
#include "esp_event_loop.h"
#include "nvs_flash.h"
#include "driver/gpio.h"
#include "driver/i2c.h"


void toggle_pin_task(void* gpio_num){

	// uxTaskGetStackHighWaterMark();

	int my_gpio_pin = 0;
	int level = 0;

	my_gpio_pin = (uint32_t) gpio_num;

    gpio_set_direction(my_gpio_pin, GPIO_MODE_OUTPUT);

    for(;;) {
    	printf("[%s]\n", level ? "HIGH":"LOW");
        gpio_set_level(my_gpio_pin, level);

        level = !level;
        vTaskDelay(500 / portTICK_PERIOD_MS);
    }
}


void app_main(void){

	BaseType_t xReturned;

    xReturned = xTaskCreate(  toggle_pin_task, 	// pointer to task entry function
							"toggle_pin_task",	// name of the task
				   2*configMINIMAL_STACK_SIZE,  // stack depth to allocate (number of words)
							(void*)GPIO_NUM_4,  // params to pass to the task
											1,  // priority (0 - (configMAX_PRIORITIES-1))
										NULL);  // used to pass a handle to the created task from xTaskCreate f'n.

    if(xReturned == pdPASS){
    	printf("_____________________________________\n");
    	printf("Toggle pin task created successfully!\n");
    } else {
    	printf("__________________________________\n");
    	printf("Toggle pin task failed to start!\n");
    }

}

