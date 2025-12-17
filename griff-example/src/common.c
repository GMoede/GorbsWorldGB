#include <gb/gb.h>
#include <gb/cgb.h>
#include <gb/metasprites.h>
#include <stdint.h>
#include <string.h>
#include "common.h"
#include "../gen/splashscreen3.h"
// #include "tileset.h"
// #include "tilemap.h"
// #include "ball.h"

#define SOLID 1
#define PLAYER_HALF_WIDTH 8
#define PLAYER_HALF_HEIGHT 8
#define GRID_NODE_SIZE 8
#define NUMBER_OF_SOLID_TILES 9

#define TILEMAP_WIDTH_IN_TILES (tilemap_WIDTH >> 3)
#define TILEMAP_HEIGHT_IN_TILES (tilemap_HEIGHT >> 3)

uint16_t playerX, playerY;

void getPlayerInput(uint16_t *nextPlayerX, uint16_t *nextPlayerY, int8_t *directionX, int8_t *directionY)
{

    // handle joypadInput
    uint8_t joypadCurrent = joypad();

    *nextPlayerX = playerX;
    *nextPlayerY = playerY;
    *directionY = 0;
    *directionX = 0;

    if (joypadCurrent & J_RIGHT)
    {
        *nextPlayerX += 1;
        *directionX = 1;
    }
    if (joypadCurrent & J_LEFT)
    {
        *nextPlayerX -= 1;
        *directionX = -1;
    }
    if (joypadCurrent & J_DOWN)
    {
        *nextPlayerY += 1;
        *directionY = 1;
    }
    if (joypadCurrent & J_UP)
    {
        *nextPlayerY -= 1;
        *directionY = -1;
    }
}

// void SetupDemo(){

//     SHOW_SPRITES;
//     SHOW_BKG;
//     SPRITES_8x16;

//     set_sprite_data(0,ball_TILE_COUNT,ball_tiles);
//     set_bkg_data(0,tileset_TILE_COUNT,tileset_tiles);

//     set_bkg_tiles(0,0,TILEMAP_WIDTH_IN_TILES,TILEMAP_HEIGHT_IN_TILES,tilemap_map);

//     playerX=80;
//     playerY=90;

// }

// This is an easy way to determine a direction for a object with two frames per direction
// const Vector8 directionsForTwoFrameObjects[7]={
//     {0,1}, // Down
//     {0,0},
//     {0,-1}, // Up,
//     {0,0},
//     {1,0},// Right
//     {0,0},
//     {-1,0},// Left
// };

uint8_t joypadCurrent = 0;
uint8_t frameCounter = 0;
uint8_t frameRealValue = 0;
uint8_t isIntroSequence = TRUE;
uint8_t increment = 1;

void fourFrameLaggingAnimation(void){
    increment = 2;
        frameCounter += increment;
        frameRealValue = frameCounter >> 4;

        if (frameRealValue >= 4 && frameRealValue <= 5)
        {
            frameRealValue = 3;
        }
        else if (frameRealValue >= 10)
        {
            frameRealValue = 0;
            frameCounter = 0;
        }
        else if (frameRealValue >= 9){
            frameRealValue = 0;
        }
        else if (frameRealValue >= 6)
        {
            frameRealValue = 8 - frameRealValue;
        }
}

/**
 * @brief Our moblin and link has two frame walk animation. They'll share a common variable that determines which frame to show
 * when they are walking.
 */
void updateFrameCounter(void)
{
    //
    if (isIntroSequence)
    {
        fourFrameLaggingAnimation();
    }
    else
    {
        increment = 3;
        frameCounter += increment;
        frameRealValue = frameCounter >> 4;
        if (frameRealValue >= 10)
        {
            frameRealValue = 0;
            frameCounter = 0;
        }
    }
}

uint8_t getCharacterVRamTile(char character)
{

    uint8_t vramTile = 0;

    // Char's can be interpreted as integers
    // We don't need to map every alpha-numeric character
    // We can use basic math to simplify A-Z and 0-9
    if (character >= 'a' && character <= 'z')
        vramTile = (character - 'a') + 1;
    else if (character >= 'A' && character <= 'Z')
        vramTile = (character - 'A') + 1;
    else if (character >= '0' && character <= '9')
        vramTile = (character - '0') + 27;
    else
    {
        switch (character)
        {
        case '!':
            vramTile = 37;
            break;
        case ':':
            vramTile = 38;
            break;
        case '?':
            vramTile = 39;
            break;
        case '/':
            vramTile = 40;
            break;
        case '=':
            vramTile = 41;
            break;
        case ',':
            vramTile = 42;
            break;
        case '.':
            vramTile = 43;
            break;
        case '<':
            vramTile = 44;
            break;
        case '>':
            vramTile = 45;
            break;
        }
    }

    return vramTile + splashscreen3_TILE_COUNT;
}

void drawTextCentered(uint8_t row, char *text)
{
    uint16_t column = (20 - strlen(text)) / 2;
    drawText(row, column, text);
}

void drawText(uint8_t column, uint8_t row, char *text)
{

    // Get the address of the first tile in the row
    uint8_t *vramAddress = get_bkg_xy_addr(column, row);

    uint16_t index = 0;

    while (text[index] != '\0')
    {

        char character = text[index];

        // Draw our character at the address
        // THEN, increment the address
        uint8_t vramTile = getCharacterVRamTile(character);

        set_vram_byte(vramAddress++, vramTile);

        index++;
    }
}
