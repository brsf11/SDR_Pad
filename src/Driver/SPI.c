#include"SPI.h"

void SPI_Sent(unsigned data,unsigned len)
{
    SPI->REG_CLKDIV = 10;
    if(len>0 && len<=31)
    {
        SPI->REG_TXFIFO = data << (32-len);
        SPI->REG_SPILEN = (len+1) << 16;
        SPI->REG_STATUS = 258;
    }
}
