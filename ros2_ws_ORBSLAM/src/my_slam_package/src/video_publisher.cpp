#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>

class VideoPublisherNode : public rclcpp::Node
{
public:
    VideoPublisherNode()
        : Node("video_publisher_node")
    {
        publisher_ = this->create_publisher<sensor_msgs::msg::Image>("camera/image_raw", 10);

        timer_ = this->create_wall_timer(
            std::chrono::milliseconds(30),  // Adjust to match video frame rate
            std::bind(&VideoPublisherNode::publish_frame, this));

        cap_.open("http://192.168.1.204:8080/video");
        if (!cap_.isOpened())
        {
            RCLCPP_ERROR(this->get_logger(), "Failed to open video stream");
        }
    }

private:
    void publish_frame()
    {
        cv::Mat frame;
        cap_ >> frame;
        if (frame.empty())
        {
            RCLCPP_WARN(this->get_logger(), "Empty frame received");
            return;
        }

        auto message = sensor_msgs::msg::Image();
        cv_bridge::CvImage cv_image;
        cv_image.image = frame;
        cv_image.encoding = "bgr8";
        cv_image.toImageMsg(message);

        publisher_->publish(message);
    }

    rclcpp::Publisher<sensor_msgs::msg::Image>::SharedPtr publisher_;
    cv::VideoCapture cap_;
    rclcpp::TimerBase::SharedPtr timer_;
};

int main(int argc, char **argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<VideoPublisherNode>());
    rclcpp::shutdown();
    return 0;
}
