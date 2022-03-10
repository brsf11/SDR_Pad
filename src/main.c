#include"Driver/code_def.h"
#include"Driver/Buzzer.h"
#include"Driver/LCD.h"
#include"Driver/Timer.h"
#include"Driver/UART.h"
#include"Driver/SPI.h"

#include"GameSDK/Game.h"
#include"RealTank.h"

uint32_t uart_flag;
uint16_t y,ny;
uint16_t x,nx;

int main()
{
        SPI_Sent(0x043420,24);
		Delay(300);
		SPI_Sent(0x28bb85,24);
		Delay(300);
		SPI_Sent(0x21A8B2,24);
		Delay(300);
		SPI_Sent(0x00c141,24);
		Delay(300);
		SPI_Sent(0x200016,24);
		Delay(300);
		SPI_Sent(0x00FA03,24);
	while(1);
    return 0;
}



void KEY()
{
    uart_flag = 1;
    uint32_t temp = KeyboardReg;
    if(temp&(1))
    {
        nx = x + 20;
    }
    else if(temp&(1<<1))
    {
        ny = y + 20;
    }
    else if(temp&(1<<2))
    {
        nx = x - 20;
    }else if(temp&(1<<5))
    {
        ny = y - 20;
    }
}

void Timer_IRQ()
{

}

void UARTRX_IRQ()
{
    UART->INTSTATUSnCLEAR = 2;
    uart_flag = 1;
    char ch = UART_getc();

    if(ch == 'a')
    {
        nx = x - 20;
    }
    else if(ch == 'w')
    {
        ny = y - 20;
    }
    else if(ch == 's')
    {
        ny = y + 20;
    }else if(ch == 'd')
    {
        nx = x + 20;
    }
}
