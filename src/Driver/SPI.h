#ifndef _SPI_H_
#define _SPI_H_
#include<stdint.h>

//SPI DEF
typedef struct
{
    volatile uint32_t REG_STATUS;
    volatile uint32_t REG_CLKDIV;
    volatile uint32_t REG_SPICMD;
    volatile uint32_t REG_SPIADR;
    volatile uint32_t REG_SPILEN;
    volatile uint32_t REG_SPIDUM;
    volatile uint32_t REG_TXFIFO;
    volatile uint32_t REG_RXFIFO;
    volatile uint32_t REG_INTCFG;
    volatile uint32_t REG_INTSTA;

}SPIStr;

#define SPI_BASE 0x40004000
#define SPI ((SPIStr *)SPI_BASE)

void SPI_Init(void);
void SPI_Sent(unsigned data,unsigned len);

#endif
