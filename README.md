### RetroArch mod for hakchi ###

This is hakchi/hakchi2 module which adds the RetroArch emulator to your NES Mini.

It will automatically detect unsupported NES games and run them instead of the default emulator. Save states will work as usual.

It can also run games for other consoles. This pack already contains the following cores:
- fceumm (NES, many mappers, UNIF support)
- nestopia (NES, FDS)
- snes9x2010 (SNES)
- gambatte_libretro (GB, GBC)
- mgba (GBA)
- genesis_plus_gx (SMS/Genesis/MD)
- mupen64plus (N64)
- stella (Atari 2600)
- picodrive (SMS, MD/Genesis, 32X, Pico)

Available executables and arguments:

        - retroarch-clover <core> <rom> <clover_args>
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
        - /bin/nes <rom> <clover_args>
          runs "fceumm" core
        - /bin/sms <rom> <clover_args>
          runs "emux_sms" core
        - /bin/snes <rom> <clover_args>
          runs "snes9x2010" core
        - /bin/n64 <rom> <clover_args>
          runs "mupen64plus" core
		- /bin/a26 <rom> <clover_args>
          runs "stella" core
        - /bin/32x <rom> <clover_args>
          runs "picodrive" core
        - /bin/retroarch-mini [core] [rom] [args]
          runs RetroArch directly, without clover intergration
        - /bin/retroarch
          RetroArch itself

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
- Added PicoDrive as Sega 32X core

NES Mini port by madmonkey

NES Mini shell integration by Cluster

Module additions by pcm720

RetroArch/libretro project: https://www.libretro.com

(c) 2017
