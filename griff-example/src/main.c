#include <gb/gb.h>
#include <gb/cgb.h>
#include <gb/metasprites.h>
#include <stdint.h>
#include "../gen/WalkingGorb.h"
#include "../gen/WalkingGorbDown.h"
#include "../gen/WalkingGorbUp.h"
#include "../gen/splashscreen3.h"
#include "gorb.h"
#include "common.h"
#include "Font.h"

void setupBackground(void);

void main(void)
{
    DISPLAY_ON;
    SHOW_BKG; //HIDE_BKG;
    SHOW_SPRITES;
    SPRITES_8x16;

    setupBackground();

    set_sprite_palette(0, WalkingGorb_PALETTE_COUNT, WalkingGorb_palettes);

    setupGorb();

    //Put font tiles after background tiles
    set_native_tile_data(splashscreen3_TILE_COUNT, Font_TILE_COUNT, Font_tiles);

    // We'll pass zero for the final argument, to draw the text instantly
    drawText(1, 1, "Press Start");

    while (1)
    {
        // Save the current state of the joypad
        // it's important NOT to call the joypad function more than once
        joypadCurrent = joypad();

        updateFrameCounter();

        uint8_t lastSprite = 0;

        lastSprite += updateGorb();
        // lastSprite += UpdateMoblin(lastSprite);

        // Hide any extra sprites
        // This might not be as useful in this demo
        // But this will be helpful for actual games
        // Without this, extra "leftover" sprites may weidly linger around.
        hide_sprites_range(lastSprite, 40);

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

void setupBackground(void)
{
    // Load & set our background data
    set_bkg_data(0, splashscreen3_TILE_COUNT, splashscreen3_tiles);
    // The gameboy screen is 160px wide by 144px tall
    // We deal with tiles that are 8px wide and 8px tall
    // 160/8 = 20, and 144/8 = 18
    set_bkg_tiles(0, 0, 20, 18, splashscreen3_map);

    // The "LaroldsJubilantJunkyard_pallette" color palette is defined in LaroldsJubilantJunkyard.c
    set_bkg_palette(0, 8, splashscreen3_palettes);

    // Set the attributes using VRAM bank 1
    // Specifically, which color palette to use
    VBK_REG = 1;
    set_bkg_tiles(0, 0, 20, 18, splashscreen3_map_attributes);

    // Switch back to bank 0 to prevent accidentally writing to bank 1
    VBK_REG = 0;
}
