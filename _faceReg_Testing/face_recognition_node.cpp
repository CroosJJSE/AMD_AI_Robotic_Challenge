#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>
#include <dlib/image_processing/frontal_face_detector.h>
#include <dlib/image_processing/render_face_detections.h>
#include <dlib/image_processing.h>
#include <dlib/opencv.h>

class FaceRecognitionNode : public rclcpp::Node
{
public:
    FaceRecognitionNode()
        : Node("face_recognition_node")
    {
        publisher_ = this->create_publisher<sensor_msgs::msg::Image>("webcam/face_recognition", 10);
        timer_ = this->create_wall_timer(
            std::chrono::milliseconds(33), std::bind(&FaceRecognitionNode::timer_callback, this));
        cap_.open(0);
        if (!cap_.isOpened())
        {
            RCLCPP_ERROR(this->get_logger(), "Failed to open webcam");
        }
        else
        {
            RCLCPP_INFO(this->get_logger(), "Webcam opened successfully");
        }

        detector_ = dlib::get_frontal_face_detector();
    }

private:
    void timer_callback()
    {
        cv::Mat frame;
        cap_ >> frame;
        if (frame.empty())
        {
            RCLCPP_ERROR(this->get_logger(), "Captured empty frame");
            return;
        }

        dlib::cv_image<dlib::bgr_pixel> dlib_frame(frame);
        std::vector<dlib::rectangle> faces = detector_(dlib_frame);

        for (auto face : faces)
        {
            cv::rectangle(frame, cv::Point(face.left(), face.top()), cv::Point(face.right(), face.bottom()), cv::Scalar(0, 255, 0), 2);
        }

        auto msg = cv_bridge::CvImage(std_msgs::msg::Header(), "bgr8", frame).toImageMsg();
        RCLCPP_INFO(this->get_logger(), "Publishing frame with face recognition");
        publisher_->publish(*msg);
    }

    rclcpp::Publisher<sensor_msgs::msg::Image>::SharedPtr publisher_;
    rclcpp::TimerBase::SharedPtr timer_;
    cv::VideoCapture cap_;
    dlib::frontal_face_detector detector_;
};

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<FaceRecognitionNode>());
    rclcpp::shutdown();
    return 0;
}
