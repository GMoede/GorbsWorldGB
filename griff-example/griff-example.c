#include <gb/gb.h>
#include <gb/cgb.h>
#include "MeowSprite.h"
#include "TheAgeOfGorby.h"

uint8_t spriteX, spriteY;
int8_t velocityX, velocityY, velocityIncrease;

void main(void)
{
    DISPLAY_ON;
    SHOW_BKG;
    SHOW_SPRITES;
    // Use HIDE_BKG; to turn the background OFF

    // Which tile to start at, how many tiles to load, and the tile data
    // set_sprite_data(0, 1, MeowSpriteTLE0);
    // // Which sprite to set, which tile to use
    // set_sprite_tile(0, 0);
    // // Where to move the sprite on the screen
    // move_sprite(0, 84, 88);
    // set_sprite_palette(0, 1, blob_pallette);

    spriteX = 80;
    spriteY = 72;
    velocityX = 0;
    velocityY = 0;
    // 160 pixels wide by 144 pixels high.
    //  // Loop forever
    while (1)
    {
        spriteX += velocityX;
        spriteY += velocityY;

        // Position the first sprite at our spriteX and spriteY
        // All sprites are render 8 pixels to the left of their x position and 16 pixels ABOVE their actual y position
        // This means an object rendered at 0,0 will not be visible
        // x+5 and y+12 will center the 8x8 tile at our x and y position
        // move_sprite(0, spriteX + 4, spriteY + 12);
        // scroll_bkg(1,5);
        // scroll_sprite(0, 1, 1);
        // Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}

void backgroundSetup()
{
    // Load & set our background data
    set_bkg_data(0, TheAgeOfGorby_TILE_COUNT, TheAgeOfGorby_tiles);
    // The gameboy screen is 160px wide by 144px tall
    // We deal with tiles that are 8px wide and 8px tall
    // 160/8 = 20, and 144/8 = 18
    set_bkg_tiles(0, 0, 20, 18, TheAgeOfGorby_map);

    // The "LaroldsJubilantJunkyard_pallette" color palette is defined in LaroldsJubilantJunkyard.c
    set_bkg_palette(0, 8, TheAgeOfGorby_palettes);

    // Set the attributes using VRAM bank 1
    // Specifically, which color palette to use
    VBK_REG = 1;
    set_bkg_tiles(0, 0, 20, 18, TheAgeOfGorby_map_attributes);

    // Switch back to bank 0 to prevent accidentally writing to bank 1
    VBK_REG = 0;
}
