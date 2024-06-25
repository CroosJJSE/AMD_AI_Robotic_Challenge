cd Thirdparty/g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j1

cd ../../Sophus

echo "Configuring and building Thirdparty/Sophus ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j1

cd ../../../

echo "Configuring and building ORB_SLAM3 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j1
