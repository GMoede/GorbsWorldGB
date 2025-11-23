#include <gb/gb.h>
#include <gb/cgb.h>
#include "MeowSprite.h"
#include "LaroldsJubilantJunkyard.h"

uint8_t spriteX, spriteY;
int8_t velocityX, velocityY, velocityIncrease;

void main(void)
{
    DISPLAY_ON;
    SHOW_BKG;
    SHOW_SPRITES;
    // Use HIDE_BKG; to turn the background OFF

    // Load & set our background data
    set_bkg_data(0, LaroldsJubilantJunkyard_tileCount, LaroldsJubilantJunkyard_data);

    // The gameboy screen is 160px wide by 144px tall
    // We deal with tiles that are 8px wide and 8px tall
    // 160/8 = 20, and 144/8 = 18
    set_bkg_tiles(0, 0, 20, 18, LaroldsJubilantJunkyard_map_plane0);

    // The "LaroldsJubilantJunkyard_pallette" color palette is defined in LaroldsJubilantJunkyard.c
    set_bkg_palette(0, 1, LaroldsJubilantJunkyard_pallette);

    // Set the attributes using VRAM bank 1
    // Specifically, which color palette to use
    VBK_REG = 1;
    set_bkg_tiles(0, 0, 20, 18, LaroldsJubilantJunkyard_map_plane1);

    // Switch back to bank 0 to prevent accidentally writing to bank 1
    VBK_REG = 0;

    // Which tile to start at, how many tiles to load, and the tile data
    set_sprite_data(0, 1, MeowSpriteTLE0);
    // Which sprite to set, which tile to use
    set_sprite_tile(0, 0);
    // Where to move the sprite on the screen
    move_sprite(0, 84, 88);
    set_sprite_palette(0, 1, blob_pallette);

    // set_sprite_data(0,2, MeowSprite);
    // set_sprite_tile(0,0);
    // move_sprite(0,88,78);

    spriteX = 80;
    spriteY = 72;
    velocityX = 3;
    velocityY = 1;
    velocityIncrease = 1;
//160 pixels wide by 144 pixels high.
    // // Loop forever
    while (1)
    {
        spriteX += velocityX;
        spriteY += velocityY;
        velocityX += velocityIncrease;
        velocityY += velocityIncrease;
        if(velocityX >= 10 || velocityX <= 0 || velocityY >= 10 || velocityY <= 0) {
            velocityIncrease = -velocityIncrease;
        }

        // When we get too far to the right while moving to the right
        if (spriteX > 156 && velocityX > 0) {
            // Switch directions for our x velocity
            velocityX = -velocityX;
            // Clamp our x position back down to 156 so we don't go past the edge
            spriteX = 156;
        }
        // When we get too far down on the screen while moving downards
        if (spriteY > 140 && velocityY > 0) {
            // Switch directions for our y velocity
            velocityY = -velocityY;
            // Clamp our y position back down to 140 so we don't go past the edge
            spriteY = 140;
        }
        // When we get too far to the left while moving left
        if (spriteX < 4 && velocityX < 0) {
            // Switch directions for our x velocity
            velocityX = -velocityX;
            // Clamp our x position back up to 4 so we don't go past the edge
            spriteX = 4;
        }
        // When we get too far towards the top of the screen while moving upwards
        if (spriteY < 4 && velocityY < 0) {
            // Switch directions for our y velocity
            velocityY = -velocityY;
            // Clamp our y position back up to 4 so we don't go past the edge
            spriteY = 4;
        }

        // Position the first sprite at our spriteX and spriteY
        // All sprites are render 8 pixels to the left of their x position and 16 pixels ABOVE their actual y position
        // This means an object rendered at 0,0 will not be visible
        // x+5 and y+12 will center the 8x8 tile at our x and y position
        move_sprite(0, spriteX + 4, spriteY + 12);
        // scroll_bkg(1,5);
        //scroll_sprite(0, 1, 1);
        // Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}
