#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/core/core.hpp>
#include <opencv2/videoio.hpp>
#include "System.h"

class MonoPhoneNode : public rclcpp::Node {
public:
    MonoPhoneNode() : Node("mono_phone_node") {
        image_sub_ = this->create_subscription<sensor_msgs::msg::Image>(
            "camera/image", 10, std::bind(&MonoPhoneNode::image_callback, this, std::placeholders::_1));

        // Initialize SLAM system
        SLAM = new ORB_SLAM3::System(vocabulary_path, settings_path, ORB_SLAM3::System::MONOCULAR, true);
        image_scale_ = SLAM->GetImageScale();
    }

    ~MonoPhoneNode() {
        SLAM->Shutdown();
        SLAM->SaveKeyFrameTrajectoryTUM("KeyFrameTrajectory.txt");
        delete SLAM;
    }

private:
    void image_callback(const sensor_msgs::msg::Image::SharedPtr msg) {
        cv::Mat im = cv_bridge::toCvCopy(msg, "bgr8")->image;

        if (image_scale_ != 1.f) {
            int width = im.cols * image_scale_;
            int height = im.rows * image_scale_;
            cv::resize(im, im, cv::Size(width, height));
        }

        double tframe = this->now().seconds();
        SLAM->TrackMonocular(im, tframe);
    }

    rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr image_sub_;
    ORB_SLAM3::System* SLAM;
    float image_scale_;
    std::string vocabulary_path = "/home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/Vocabulary/ORBvoc.txt";
    std::string settings_path = "/home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/Examples/Monocular/phone_camera.yaml";
};

int main(int argc, char** argv) {
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<MonoPhoneNode>());
    rclcpp::shutdown();
    return 0;
}
