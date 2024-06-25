#ifndef HFNETVITISMODEL_H
#define HFNETVITISMODEL_H

#include <string>
#include <memory>
#include <iostream>
#include <opencv2/opencv.hpp>
#include "Extractors/BaseModel.h"

// #define USE_VITISDPU

#ifdef USE_VITISDPU
//include required vitis dpu header files
// #include <NvInfer.h>
// #include "Extractors/TensorRTBuffers.h"
#endif // USE_VITISDPU

namespace ORB_SLAM3
{

#ifdef USE_VITISDPU

//put useful globalscope classes and functions here
/*
class RTLogger : public nvinfer1::ILogger
{
public:
    RTLogger(nvinfer1::ILogger::Severity severity = nvinfer1::ILogger::Severity::kWARNING) : level(severity) {}

    void log(nvinfer1::ILogger::Severity severity, nvinfer1::AsciiChar const* msg) noexcept override;

    nvinfer1::ILogger::Severity level;
};

class RTTensor
{
public:
    RTTensor(void* d, nvinfer1::Dims s) : data(d), shape(s) {} 
    void* data;
    nvinfer1::Dims shape;
};*/

class HFNetVITISModel : public BaseModel
{
public:
    HFNetVITISModel(const std::string &strModelDir, ModelDetectionMode mode, const cv::Vec4i inputShape);
    virtual ~HFNetVITISModel(void) = default;

//public interfaces
    bool Detect(const cv::Mat &image, std::vector<cv::KeyPoint> &vKeyPoints, cv::Mat &localDescriptors, cv::Mat &globalDescriptors,
                int nKeypointsNum, float threshold) override;

    bool Detect(const cv::Mat &image, std::vector<cv::KeyPoint> &vKeyPoints, cv::Mat &localDescriptors,
                         int nKeypointsNum, float threshold) override;

    bool Detect(const cv::Mat &intermediate, cv::Mat &globalDescriptors) override;

    bool IsValid(void) override { return mbVaild; }

    ModelType Type(void) override { return kHFNetTFModel; }

//~public interfaces

    // std::shared_ptr<nvinfer1::ICudaEngine> mEngine = nullptr;

protected:

    // bool LoadHFNetTRModel(void);

    // void LoadTimingCacheFile(const std::string& strFileName, std::unique_ptr<nvinfer1::IBuilderConfig>& config, std::unique_ptr<nvinfer1::ITimingCache>& timingCache);

    // void UpdateTimingCacheFile(const std::string& strFileName, std::unique_ptr<nvinfer1::IBuilderConfig>& config, std::unique_ptr<nvinfer1::ITimingCache>& timingCache);

    // std::string DecideEigenFileName(const std::string& strEngineSaveDir, ModelDetectionMode mode, const nvinfer1::Dims4 inputShape);

    // bool SaveEngineToFile(const std::string& strEngineSaveFile, const std::unique_ptr<nvinfer1::IHostMemory>& serializedEngine);

    // bool LoadEngineFromFile(const std::string& strEngineSaveFile);

    // void PrintInputAndOutputsInfo(std::unique_ptr<nvinfer1::INetworkDefinition>& network);

    bool Run(void);

    // void GetLocalFeaturesFromTensor(const RTTensor &tScoreDense, const RTTensor &tDescriptorsMap,
    //                                 std::vector<cv::KeyPoint> &vKeyPoints, cv::Mat &localDescriptors, 
    //                                 int nKeypointsNum, float threshold);

    // void GetGlobalDescriptorFromTensor(const RTTensor &tDescriptors, cv::Mat &globalDescriptors);

    // void Mat2Tensor(const cv::Mat &mat, RTTensor &tensor);

    // void Tensor2Mat(const RTTensor &tensor, cv::Mat &mat);

    // void ResamplerRT(const RTTensor &data, const cv::Mat &warp, cv::Mat &output);

    // nvinfer1::Dims4 mInputShape;
    ModelDetectionMode mMode;
    std::string mStrTRModelDir;
    std::string mStrONNXFile;
    std::string mStrCacheFile;
    bool mbVaild = false;
    // RTLogger mLogger;
    // std::unique_ptr<BufferManager> mpBuffers;
    // std::vector<RTTensor> mvInputTensors;
    // std::vector<RTTensor> mvOutputTensors;
    // std::shared_ptr<nvinfer1::IExecutionContext> mContext = nullptr;
};

#else // USE_VITISDPU

class HFNetVITISModel : public BaseModel
{
public:
    HFNetVITISModel(const std::string &strModelDir, ModelDetectionMode mode, const cv::Vec4i inputShape)
    {
        std::cerr << "You must set USE_VITISDPU in CMakeLists.txt to enable Vitis DPU function." << std::endl;
        exit(-1);
    }

    virtual bool Detect(const cv::Mat &image, std::vector<cv::KeyPoint> &vKeyPoints, cv::Mat &localDescriptors, cv::Mat &globalDescriptors,
                        int nKeypointsNum, float threshold) override { return false; }

    virtual bool Detect(const cv::Mat &image, std::vector<cv::KeyPoint> &vKeyPoints, cv::Mat &localDescriptors,
                        int nKeypointsNum, float threshold) override { return false; }

    virtual bool Detect(const cv::Mat &intermediate, cv::Mat &globalDescriptors) override { return false; }

    bool IsValid(void) override { return false; }

    ModelType Type(void) override { return kHFNetRTModel; }
};

#endif // USE_VITISDPU

} // namespace ORB_SLAM3

#endif // HFNETVITISMODEL_H