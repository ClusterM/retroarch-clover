#!/bin/sh
rm -rf ./release
mkdir -p release/cores
mkdir release/extra_cores
printf "\nPacking core template and CloverApp\n\n"
zip -rq release/libretro_core_template.zip libretro_core_template.hmod/*
zip -rq release/CloverApp.zip CloverApp
echo "Packing retroarch.hmod"
cd retroarch.hmod && tar -czf ../release/retroarch.hmod * && cd ..
printf "\nCores:\n"
cd core_modules
for dir in *.hmod; do
	cd "$dir"
	echo "$dir"
    tar -czf "../../release/cores/$dir" *
    cd ../
done
printf "\nExtra cores:\n"
cd ../core_modules_extra
for dir in *.hmod; do
	echo "$dir"
	cd "$dir"
    tar -czf "../../release/extra_cores/$dir" *
    cd ../
done
echo
