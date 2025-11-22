#include <gb/gb.h>
#include <gb/cgb.h>
#include "LaroldsJubilantJunkyard.h"


void main(void)
{
    DISPLAY_ON;
    SHOW_BKG;
    // Use HIDE_BKG; to turn the background OFF

    // Load & set our background data
    set_bkg_data(0,LaroldsJubilantJunkyard_tileCount,LaroldsJubilantJunkyard_data);

    // The gameboy screen is 160px wide by 144px tall
    // We deal with tiles that are 8px wide and 8px tall
    // 160/8 = 20, and 144/8 = 18
    set_bkg_tiles(0,0,20,18,LaroldsJubilantJunkyard_map_plane0);

    // The "LaroldsJubilantJunkyard_pallette" color palette is defined in LaroldsJubilantJunkyard.c
    set_bkg_palette(0,1,LaroldsJubilantJunkyard_pallette); 

    // // Set the attributes using VRAM bank 1
    // // Specifically, which color palette to use
    // VBK_REG=1;
    // set_bkg_tiles(0,0,20,18,LaroldsJubilantJunkyard_map_plane1);

    // // Switch back to bank 0 to prevent accidentally writing to bank 1
    // VBK_REG=0;

    // // Loop forever
    // while(1) {

	// 	// Done processing, yield CPU and wait for start of next frame
    //     wait_vbl_done();
    // }
}
