Use this template to add and remove your own cores:
1. Make a backup of libretro_core_template.hmod folder
2. Rename the folder to something more meaningful
3. Copy your *.so file to <hmod folder>/etc/libretro/core folder
4. Copy the corresponding *.info file to <hmod folder>/etc/libretro/info
5. Open /bin/core with Notepad++ or Sublime Text and change the "core" to your core name (without "_libretro.so"!)
6. Rename core to something more meaningful. You'll need to change "/bin/path-to-your-app" line in Hakchi2 with "/bin/<file you've renamed>"

Example:
The core name is fb_alpha_libretro.so:
2. Rename the folder to fb_alpha
3. Copy your fb_alpha_libretro.so file to <hmod folder>/etc/libretro/core folder
4. Copy the corresponding fb_alpha_libretro.info file to <hmod folder>/etc/libretro/info
5. Open /bin/core with Notepad++ or Sublime Text and change the "core" to "fb_alpha"
6. Rename core to fba. You'll need to change "/bin/path-to-your-app" line in Hakchi2 with "/bin/fba" for the games you want to start using FB Alpha
