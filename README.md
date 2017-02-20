### RetroArch module for hakchi ###

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

Executables and arguments for all available cores:

        - /bin/retroarch-clover <core> <rom> <clover_args>
          runs RetroArch with specified core,
          designed for executing from clover shell, 
          so it parses all clover arguments (saves, aspect ratio, etc.)
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
        - /bin/nes <rom> <clover_args>
          runs "fceumm" core or "nestopia" core
        - /bin/snes <rom> <clover_args>
          runs "snes9x2010" core
        - /bin/n64 <rom> <clover_args>
          runs "mupen64plus" core or "glupen64" core
		- /bin/a26 <rom> <clover_args>
          runs "stella" core
        - /bin/pce <rom> <clover_args>
          runs "mednafen_pce_fast" core
        - /bin/retroarch-mini [core] [rom] [args]
          runs RetroArch directly, without clover intergration
        - /bin/retroarch
          RetroArch binary

Sometimes default emulator of NES Mini is not working with some games when it should. So you can just add "--retroarch" command line argument to use RetroArch.

Known issues:
- Nintendo 64 save-states are not working, battery backup working fine
- Default CRT filter is not working, scanlines shader added instead but it's not working with all systems.
- It's recommended to turn your NES Mini off from shell, not during game

The following changes were made in this fork: 
- Added Stella core for Atari 2600 emulation
- System dir is now '~/system'
- Core info dir is now '~/info'
- RGUI default browser dir is now '/usr/share/games/nes/kachikachi' instead of '/'
- Disabled bilinear filtering for every preset
- Enabled integer scaling
- Greyscale palette for Gambatte core
- Use mGBA as GBA core
- Added mednafen_pce_fast as PCE/TG16 core
- Enter RetroArch in-game menu by pressing Select + Start
- Added template for adding new cores via hakchi module system
- Cores are now represented as additional modules

NES Mini port by madmonkey

NES Mini shell integration by Cluster

Various additions, tweaks and fixes by pcm720

RetroArch/libretro project: https://www.libretro.com

(c) 2017
