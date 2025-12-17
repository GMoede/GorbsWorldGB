#include <gb/gb.h>
#include <gb/cgb.h>
#include "../gen/WalkingGorb.h"
#include "../gen/WalkingGorbDown.h"
#include "../gen/WalkingGorbUp.h"
#include "../gen/gorbySleeping.h"

#define GORB_SPEED 8

extern uint8_t joypadCurrent, joypadPrevious, frameRealValue, isIntroSequence;

extern const int16_t directions[9][2];

uint8_t gorbDirection = 0;
uint16_t gorbX, gorbY;

uint8_t flipGorb = FALSE;
uint8_t isIntroSpriteSelected = FALSE;

// Keep track of which metasprite to use for link
metasprite_t const *gorbMetasprite;

void initialAnimation(void)
{
    set_sprite_data(0, gorbySleeping_TILE_COUNT, gorbySleeping_tiles);
    gorbX = 80 << 4;
    gorbY = 40 << 4;
    gorbMetasprite = gorbySleeping_metasprites[0];
    // Position gorb on the couch
    // Go through the sleeping animation
    // Once 'start' is pressed, gorby blinks twice, and jumps down, and walks away.
}

void setupGorb(void)
{
    //Put him on the couch
    if (isIntroSequence)
    {
        set_sprite_data(0, gorbySleeping_TILE_COUNT, gorbySleeping_tiles);
        gorbX = 67 << 4;
        gorbY = 100 << 4;
        gorbMetasprite = gorbySleeping_metasprites[0];
        isIntroSpriteSelected = TRUE;
    }
    else
    {
        // set the down tiles in
        set_sprite_data(0, WalkingGorbDown_TILE_COUNT, WalkingGorbDown_tiles);

        // Position near the top middle
        // Scale the position, since we are using scaled integers
        gorbX = 80 << 4;
        gorbY = 40 << 4;

        // Start by facing down
        gorbDirection = J_DOWN;

        // Start with the down metasprite
        gorbMetasprite = WalkingGorbDown_metasprites[0];
    }
}

uint8_t updateGorb(void)
{
    if(isIntroSequence){
        gorbMetasprite = gorbySleeping_metasprites[frameRealValue];
        move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
    }

     // Save our last direction
    // So we can keep track of directional changes
    uint8_t gorbLastDirection = gorbDirection;
    uint8_t gorbMoving = FALSE;

    // check if the right joypad button is pressed
    if (joypadCurrent & J_RIGHT)
    {
        gorbX += GORB_SPEED;
        gorbDirection = J_RIGHT;
        gorbMoving = TRUE;
    }

    // check if the left joypad button is pressed
    if (joypadCurrent & J_LEFT)
    {
        gorbX -= GORB_SPEED;
        gorbDirection = J_LEFT;
        gorbMoving = TRUE;
    }

    // check if the down joypad button is pressed
    if (joypadCurrent & J_DOWN)
    {
        gorbY += GORB_SPEED;
        gorbDirection = J_DOWN;
        gorbMoving = TRUE;
    }

    // check if the up joypad button is pressed
    if (joypadCurrent & J_UP)
    {
        gorbY -= GORB_SPEED;
        gorbDirection = J_UP;
        gorbMoving = TRUE;
    }

    // If link is moving
    if (gorbMoving)
    {
        isIntroSequence = FALSE;
        // If we changed direction
        if (gorbDirection != gorbLastDirection)
        {
            // Set the sprite data for the new side we are facing
            // We do not have 'left' tiles, we'll use the 'right' tiles and flip them
            switch (gorbDirection)
            {
            case J_DOWN:
                set_sprite_data(0, WalkingGorbDown_TILE_COUNT, WalkingGorbDown_tiles);
                break;
            case J_RIGHT:
                set_sprite_data(0, WalkingGorb_TILE_COUNT, WalkingGorb_tiles);
                break;
            case J_LEFT:
                set_sprite_data(0, WalkingGorb_TILE_COUNT, WalkingGorb_tiles);
                break;
            case J_UP:
                set_sprite_data(0, WalkingGorbUp_TILE_COUNT, WalkingGorbUp_tiles);
                break;
            }
        }

        // Change the metasprite link uses
        // We don't have 'left' metasprites. So we'll use the right metasprites and flip
        switch (gorbDirection)
        {
        case J_DOWN:
            gorbMetasprite = WalkingGorbDown_metasprites[frameRealValue];
            flipGorb = FALSE;
            break;
        case J_RIGHT:
            gorbMetasprite = WalkingGorb_metasprites[frameRealValue];
            flipGorb = FALSE;
            break;
        case J_LEFT:
            gorbMetasprite = WalkingGorb_metasprites[frameRealValue];
            flipGorb = TRUE;
            break;
        case J_UP:
            gorbMetasprite = WalkingGorbUp_metasprites[frameRealValue];
            flipGorb = FALSE;
            break;
        }
    }

    // flip along the vertical access if neccessary
    // Draw link at the non-scaled position
    // Return how many sprites were used
    if (flipGorb)
        return move_metasprite_vflip(gorbMetasprite, 0, 0, gorbX >> 4, gorbY >> 4);
    else
        return move_metasprite_ex(gorbMetasprite, 0, 0, 0, gorbX >> 4, gorbY >> 4);
}