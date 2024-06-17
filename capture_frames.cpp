#include <iostream>
#include <opencv2/opencv.hpp>
#include <filesystem>  // For directory operations
#include <thread>      // For std::this_thread
#include <chrono>      // For std::chrono::milliseconds

namespace fs = std::filesystem;  // Alias for filesystem namespace

void captureFrames() {
    cv::VideoCapture cap(0);  // Open webcam device /dev/video2

    if (!cap.isOpened()) {
        std::cerr << "Error opening webcam" << std::endl;
        return;
    }

    // Clear the output directory at the start
    std::string outputDir = "./test_cap_images";
    fs::remove_all(outputDir);
    fs::create_directory(outputDir);

    int frameCount = 10;  // Capture 60 frames in total
    int frameNumber = 1;

    while (frameNumber <= frameCount) {
        cv::Mat frame;
        cap >> frame;  // Capture frame from webcam

        if (frame.empty()) {
            std::cerr << "Error capturing frame" << std::endl;
            break;
        }

        std::string filename = outputDir + "/frame_" + std::to_string(frameNumber) + ".jpg";
        cv::imwrite(filename, frame);  // Save frame as image file

        std::cout << "Saved: " << filename << std::endl;

        // Display frame (optional)
        cv::imshow("Frame", frame);
        cv::waitKey(1);  // Wait for key press

        frameNumber++;

        // Delay to capture one frame per second
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    cap.release();  // Release webcam
    cv::destroyAllWindows();  // Close all OpenCV windows
}

int main() {
    captureFrames();
    return 0;
}
