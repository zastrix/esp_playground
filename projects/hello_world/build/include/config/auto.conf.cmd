deps_config := \
	/Users/dgmiller/esp/esp-idf/components/app_trace/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/aws_iot/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/bt/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/driver/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/esp32/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/ethernet/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/fatfs/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/freertos/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/heap/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/libsodium/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/log/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/lwip/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/mbedtls/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/openssl/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/pthread/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/spi_flash/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/spiffs/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/wear_levelling/Kconfig \
	/Users/dgmiller/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/dgmiller/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/dgmiller/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/dgmiller/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
