deps_config := \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/app_trace/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/aws_iot/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/bt/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/driver/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/esp32/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/ethernet/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/fatfs/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/freertos/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/heap/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/libsodium/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/log/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/lwip/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/mbedtls/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/openssl/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/pthread/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/spi_flash/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/spiffs/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/wear_levelling/Kconfig \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/dgmiller/workspace/esp_playground/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/dgmiller/workspace/esp_playground/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
