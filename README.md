# RetroArch module for hakchi

This is a hakchi/hakchi2 module which adds libretro cores and RetroArch front-end to your NES Mini.

It will automatically detect unsupported NES games and run them instead of the default emulator. Save states will work as usual.

It can also run games for other consoles. This pack already contains the following cores:
- fceumm (Famicom/Nintendo Entertainment System, many mappers, UNIF support)
- nestopia (Famicom/Nintendo Entertainment System, Famicom Disk System)

And the following cores are available as additional modules (in core_modules folder):
- snes9x2010 (Super Famicom/Super Nintendo)
- gambatte_libretro (Game Boy, Game Boy Color)
- mgba (Game Boy Advance)
- genesis_plus_gx (Sega Master System, Genesis/Mega Drive, Game Gear)
- mupen64plus (Nintendo 64)
- stella (Atari 2600)
- mednafen_pce_fast (PC Engine/Turbografx 16)
- fb_alpha and fb_alpha_cps2 (various arcade machines)

RetroArch modules created by other users (in core_modules_extra folder):
- fbalpha2012_neogeo (Neo-Geo), provided by 1lokolo1/nesito
- fuse (ZX Spectrum), provided by 1lokolo1/nesito
- caprice32 (Amstrad CPC), provided by 1lokolo1/nesito

## How to use this

1. Go to "releases" tab and download the newest release.zip 
2. Unpack release.zip anywhere you want
3. Copy retroarch.hmod and the cores you want (.hmod files from core_modules and core_modules_extra folders) to user_mods directory of Hakchi2.
4. Install the modules (all modules can be installed in one go) via Hakchi2's Modules menu.
5. Add the games as usual

Please note:
- To add RetroArch shortcut to NES Mini's shell, drag-and-drop CloverApp.zip to Hakchi2
- To make your own RetroArch modules, use the structure from libretro_core_template.zip. Use exisiting modules as a reference.
- If the file extension of your game is not supported by Hakchi2, you may need to change the path in command line arguments (in Hakchi2's game options) to make it point to the corresponding core
- To use RetroArch for any NES game, just add "--retroarch" to command line arguments
- To use Nestopia instead of FCEUmm, install use_nestopia.hmod module

## Additional information

Executables and arguments for all available cores:

        - /bin/retroarch-clover <core> <rom> <clover_args>
          runs RetroArch with specified core,
          designed for executing from clover shell, 
          so it parses all clover arguments (saves, aspect ratio, etc.)
        - /bin/retroarch-mini [core] [rom] [args]
          runs RetroArch directly, without clover intergration
        - /bin/retroarch
          RetroArch binary
        - /bin/nes <rom> <clover_args>
          runs "fceumm" core or "nestopia" core
        - /bin/gb <rom> <clover_args>
          runs "gambatte" core
        - /bin/gbc <rom> <clover_args>
          runs "gambatte" core
        - /bin/gba <rom> <clover_args>
          runs "mgba" core
        - /bin/md <rom> <clover_args>
          runs "genesis_plus_gx" core
        - /bin/sms <rom> <clover_args>
          runs "genesis_plus_gx" core
        - /bin/gg <rom> <clover_args>
          runs "genesis_plus_gx" core
        - /bin/snes <rom> <clover_args>
          runs "snes9x2010" core
        - /bin/n64 <rom> <clover_args>
          runs "mupen64plus" core or "glupen64" core
		- /bin/a26 <rom> <clover_args>
          runs "stella" core
        - /bin/pce <rom> <clover_args>
          runs "mednafen_pce_fast" core
        - /bin/fba <rom> <clover_args>
          runs "fb_alpha" core
        - /bin/cps2 <rom> <clover_args>
          runs "fb_alpha_cps2" core
        - /bin/neo <rom> <clover_args>
          runs "fbalpha2012_neogeo" core
        - /bin/cpc <rom> <clover_args>
          runs "caprice32" core
        - /bin/zx <rom> <clover_args>
          runs "fuse" core

## Known issues

- Nintendo 64 save-states are not working, battery backups work fine
- Default CRT filter is not working, scanlines shader added instead but it's not working with all systems.
- It's recommended to turn your NES Mini off from shell, not during the game

## Credits

NES Mini port by madmonkey

NES Mini shell integration by Cluster

Various additions, tweaks and fixes by pcm720

RetroArch/libretro project: https://www.libretro.com

(c) 2017
