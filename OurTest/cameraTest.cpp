#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main() {
    // URL of the video stream from your mobile phone camera
    string url = "http://192.168.1.125:8080/video";

    // Open the video stream
    VideoCapture cap(url);

    if (!cap.isOpened()) {
        cerr << "Error opening video stream or file" << endl;
        return -1;
    }

    // Set properties to reduce resolution and FPS
    cap.set(CAP_PROP_FRAME_WIDTH,320);
    cap.set(CAP_PROP_FRAME_HEIGHT, 200);
    cap.set(CAP_PROP_FPS, 1);

    while (true) {
        Mat frame;
        // Capture frame-by-frame
        cap >> frame;

        // If the frame is empty, break immediately
        if (frame.empty())
            break;

        // Operations on the frame (if needed)
        Mat gray;
        cvtColor(frame, gray, COLOR_BGR2GRAY);

        // Display the frame
        imshow("Frame", gray);

        // Exit if 'q' is pressed
        if (waitKey(1) == 'q')
            break;
    }

    // Release the VideoCapture object
    cap.release();
    destroyAllWindows();

    return 0;
}
