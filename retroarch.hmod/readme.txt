=== RetroArch module for hakchi ===
version 0.2_mod

This is a hakchi/hakchi2 module which adds libretro cores and RetroArch frontend to your NES Mini.

It will automatically detect unsupported NES games and run them instead of the default emulator. Save states will work as usual.

It can also run games for other consoles. This pack already contains the following cores:

- fceumm (NES, many mappers, UNIF support)
- nestopia (NES, FDS)

Available executables and arguments:

- /bin/retroarch-clover <core> <rom> <clover_args>
  runs RetroArch with specified core,
  designed for executing from clover shell, 
  so it parses all clover arguments (saves, aspect ratio, etc.)
- /bin/nes <rom> <clover_args>
  runs "fceumm" core or "nestopia" for FDS games
- /bin/retroarch-mini [core] [rom] [args]
  runs RetroArch directly, without clover intergration
- /bin/retroarch
  RetroArch binary

Sometimes default emulator of NES mini is not working with some games when it should. So you can just add "--retroarch" command line argument to use RetroArch.

Known issues:
- Nintendo 64 save-states are not working, battery backup working fine
- Default CRT filter is not working, scanlines shader added instead, only for NES
- It's recommended to turn your NES Mini off from shell, not during game

Cores by libretro, compiled by pcm
NES Mini port by madmonkey
NES Mini shell integration by Cluster
Additional modules by pcm
(c) 2017
