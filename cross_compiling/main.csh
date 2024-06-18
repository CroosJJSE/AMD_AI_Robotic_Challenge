mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../aarch64-toolchain.cmake ..
make
