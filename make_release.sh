#!/bin/sh
rm -rf ./release
mkdir -p release/cores
echo "\nPacking core template, BIOS template and CloverApp\n\n"
zip -rq release/libretro_core_template.zip libretro_core_template.hmod/*
zip -rq release/bios_template.zip bios_template.hmod/*
zip -rq release/CloverApp-ForNES.zip CloverApp-ForNES
zip -rq release/CloverApp-ForSNES.zip CloverApp-ForSNES
echo "Packing retroarch.hmod"
cd retroarch.hmod && tar -czf ../release/retroarch.hmod * && cd ..
printf "\nModules:\n"
cd core_modules
for dir in *.hmod; do
	cd "$dir"
	echo "$dir"
    tar -czf "../../release/cores/$dir" *
    cd ../
done
cd ..
mkdir -p release/additional_mods
mv release/cores/use_* release/additional_mods
mv release/cores/xmb_* release/additional_mods
echo "\nPacking retroarch and main cores"
cd release
zip -rqv retroarch_with_cores.zip retroarch.hmod cores
echo "\nPacking additional modules"
zip -rqv additional_mods.zip additional_mods/*
