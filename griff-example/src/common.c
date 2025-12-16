#include <gb/gb.h>
#include <gb/cgb.h>
#include <gb/metasprites.h>
#include <stdint.h>
#include "common.h"
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

void GetPlayerInput(uint16_t *nextPlayerX, uint16_t *nextPlayerY, int8_t *directionX, int8_t *directionY)
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
