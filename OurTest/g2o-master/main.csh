mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../aarch64-toolchain.cmake ..
make
#cd ..
#chmod +x clean_build.sh
#./clean_build.sh