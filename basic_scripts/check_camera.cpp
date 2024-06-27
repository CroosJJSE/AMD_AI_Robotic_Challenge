#include <opencv2/opencv.hpp>
#include <iostream>

int main() {
    cv::VideoCapture cap("/dev/video0"); // Adjust device path as needed

    if (!cap.isOpened()) {
        std::cerr << "Error opening video stream or file" << std::endl;
        return -1;
    }

    cv::namedWindow("Video Feed", cv::WINDOW_NORMAL);
    cv::resizeWindow("Video Feed", 640, 480); // Adjust window size as needed

    while (true) {
        cv::Mat frame;
        cap >> frame; // Capture frame from webcam

        if (frame.empty()) {
            std::cerr << "No captured frame" << std::endl;
            break;
        }

        cv::imshow("Video Feed", frame);

        char key = cv::waitKey(30);
        if (key == 27) // Press ESC to exit
            break;
    }

    cap.release();
    cv::destroyAllWindows();

    return 0;
}
