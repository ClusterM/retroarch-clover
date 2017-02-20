Use this template to add and remove your own cores:
1. Make a backup of libretro_core_template.hmod folder
2. Copy your *.so file to libretro_core_template.hmod folder and rename the folder to something more meaningful (e.g., <core name>.hmod)
3. Open "install" and "uninstall" scripts with Notepad++ or Sublime Text and change the <> to your core name
Example:
The core name is fb_alpha_libretro.so:
1. Copy your fb_alpha_libretro.so file to libretro_core_template.hmod folder and rename the folder to fb_alpha.hmod
2. Open "install" and "uninstall" scripts with Notepad++ or Sublime Text and change the <> to fb_alpha
