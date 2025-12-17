#ifndef COMMON_HEADER

#define COMMON_HEADER

#include <stdint.h>

void updateFrameCounter(void);
void fourFrameLaggingAnimation(void);
uint8_t getCharacterVRamTile(char character);
void drawText(uint8_t column, uint8_t row, char *text);
void drawTextCentered(uint8_t row, char *text);
void main(void);

typedef struct Vector8{
    int8_t x;
    int8_t y;
} Vector8;

extern const Vector8 directionsForTwoFrameObjects[7];

extern uint8_t joypadCurrent, joypadPrevious, twoFrameRealValue, isIntroSequence;

#endif