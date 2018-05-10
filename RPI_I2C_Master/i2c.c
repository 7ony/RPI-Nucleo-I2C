#include <stdio.h>
#include <stdlib.h>
#include <bcm2835.h>

void setTimeout(uint16_t timeout);

int main(int argc, char** argv) {
	char cmd[] = "CHIP_NAME";
	char data[11] = {0};
    if (!bcm2835_init())
        return 1;
    bcm2835_i2c_begin();
    bcm2835_i2c_setClockDivider(BCM2835_I2C_CLOCK_DIVIDER_626);
    setTimeout(40000);
    bcm2835_i2c_setSlaveAddress(0x1e);
    
	
    bcm2835_i2c_write_read_rs(cmd,9, data, 11);
    printf("Data = %s\n\r",data);
    bcm2835_i2c_end();
    return (EXIT_SUCCESS);
}


void setTimeout(uint16_t timeout) {
    volatile uint32_t* stimeout = bcm2835_bsc1 + BCM2835_BSC_CLKT / 4;
    bcm2835_peri_write(stimeout, timeout);
}