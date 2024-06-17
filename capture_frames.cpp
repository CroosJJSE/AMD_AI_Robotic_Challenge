#include <iostream>
#include <opencv2/opencv.hpp>
#include <filesystem>  // For directory operations
#include <thread>      // For std::this_thread
#include <chrono>      // For std::chrono::milliseconds

namespace fs = std::filesystem;  // Alias for filesystem namespace

void captureFrames() {
    cv::VideoCapture cap("/dev/video2"); // Open webcam device /dev/video3

    if (!cap.isOpened()) {
        std::cerr << "Error opening webcam" << std::endl;
        return;
    }

    // Clear the output directory at the start
    std::string outputDir = "./test_cap_images";
    fs::remove_all(outputDir);
    fs::create_directory(outputDir);

    int count = 0;
    int frameRate = 1;  // Capture 1 frame per second
    int frameCount = 10;  // Capture 60 frames in total
    int delay = 1000 / frameRate;  // Delay in milliseconds

    while (count < frameCount) {
        cv::Mat frame;
        cap >> frame;  // Capture frame from webcam

        if (frame.empty()) {
            std::cerr << "Error capturing frame" << std::endl;
            break;
        }

        std::string filename = outputDir + "/frame_" + std::to_string(count + 1) + ".jpg";
        cv::imwrite(filename, frame);  // Save frame as image file

        std::cout << "Saved: " << filename << std::endl;

        // Display frame (optional)
        cv::imshow("Frame", frame);
        cv::waitKey(1);  // Wait for key press

        count++;

        // Delay to achieve 1 frame per second
        std::this_thread::sleep_for(std::chrono::milliseconds(delay));
    }

    cap.release();  // Release webcam
    cv::destroyAllWindows();  // Close all OpenCV windows
}

int main() {
    captureFrames();
    return 0;
}
