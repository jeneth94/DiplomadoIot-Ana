/*! @file : K32L2B31A_Project.c
 * @author  Ana Alarcon Pasos
 * @version 0.0.000
 * @date    23/08/2021
 * @brief   Funcion principal main
 * @details
 *			v0.0.000	Proyecto base creado usando MCUXpresso
 *
 *
 */
/*******************************************************************************
 * Includes
 ******************************************************************************/

#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "K32L2B31A.h"
#include "fsl_debug_console.h"
#include "led.h"
/* TODO: insert other include files here. */

/* TODO: insert other definitions and declarations here. */
unsigned int test_global_var=100;
float dato_float=3.416;
/*******************************************************************************
 * Private Source Code
 ********************************************************************************/
 /*!
 * @brief genera bloqueo de microcontrolador por tiempo fijo
 *
 */
void delay_block(void){
	uint32_t i;
	for(i=0;i<0xFFFFF;i++){

	}
}


int main(void) {
	 volatile static int i = 0 ; /* Force the counter to be placed into memory. */

    /* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif

    PRINTF("Hello World\r\n");
    printf("test_global_var:%d\r\n",test_global_var);
    printf("dato_float:%g\r\n",dato_float);




    /* Enter an infinite loop, just incrementing a counter. */
    while(1) {
        i++ ;
        printf("i:%u\r\n",i);
        encender_led_verde();
        delay_block();
        apagar_led_verde();
        delay_block();

    }
    return 0 ;
}
