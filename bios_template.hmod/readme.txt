Use this template to add BIOS images for custom cores:
1. Copy BIOS files to <hmod folder>/etc/libretro/system folder
2. Copy .hmod folder to user_mods and install

You can have multiple BIOS images for any core you want in the same module.
For the proper names of BIOS images, consult libretro Wiki.
Be aware that NES Mini's filesystem is case-sensitive which means that "bios.bin" and "BIOS.bin" are different files!

For example, let's add BIOS images required for proper emulation of Mega/Sega CD:
The required files are bios_CD_U.bin, bios_CD_E.bin and bios_CD_J.bin.
1. Copy bios_CD_U.bin, bios_CD_E.bin and bios_CD_J.bin to <hmod folder>/etc/libretro/system
2. Rename the folder to bios_images.hmod (for the sake of convenience)
3. Copy the folder to user_mods
4. Install the module via Hakchi 2 as usual
