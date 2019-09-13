
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------

#include "hal/rpi-gpio.h"
#include "hal/rpi-armtimer.h"
#include "hal/rpi-interrupts.h"
extern void __enable_interrupts ( void );

//-------------------------------------------------------------------------
void __attribute__((interrupt("IRQ"))) interrupt_vector ( void )
{
    static int light = 10000;
    static int top = 10000;
    static int bottom = 5000;
    static int aux = 1;
    static int lit = 0;

    /* Clear the ARM Timer interrupt - it's the only interrupt we have
       enabled, so we want don't have to work out which interrupt source
       caused us to interrupt */
    RPI_GetArmTimer()->IRQClear = 1;

    /* Flip the LED */
    if( lit )
    {
        LED_OFF();
        lit = 0;
        RPI_GetArmTimer()->Load = top - light;
    }
    else
    {
        LED_ON();
        lit = 1;

        if(!aux) light += 50;
        if(aux) light -= 50;
        
        if(light == top) aux = !aux;
        if(light == bottom) aux = !aux; 

        RPI_GetArmTimer()->Load = light;

    }
}

//-------------------------------------------------------------------------
int notmain ( void )
{

    
    RPI_GetIrqController()->Disable_Basic_IRQs = RPI_BASIC_ARM_TIMER_IRQ;

    RPI_GetGpio()->LED_GPFSEL |= 1 << LED_GPFBIT;
    LED_ON();
    LED_OFF();
    
    /* Setup the system timer interrupt */
    /* Timer frequency = Clk/256 * 0x400 */
    RPI_GetArmTimer()->Load = 1000000;

    /* Setup the ARM Timer */
    RPI_GetArmTimer()->Control =
        RPI_ARMTIMER_CTRL_23BIT |
        RPI_ARMTIMER_CTRL_ENABLE |
        RPI_ARMTIMER_CTRL_INT_ENABLE |
        RPI_ARMTIMER_CTRL_PRESCALE_1;


    RPI_GetIrqController()->Enable_Basic_IRQs = RPI_BASIC_ARM_TIMER_IRQ;
    __enable_interrupts();
    while(1) continue;
    return(0);
}
