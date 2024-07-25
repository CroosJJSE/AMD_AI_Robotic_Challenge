#include <rclcpp/rclcpp.hpp>
#include <std_msgs/msg/string.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <cv_bridge/cv_bridge.h>

#include <opencv2/core/core.hpp>
#include <opencv2/videoio.hpp>

#include <System.h>

using namespace std;

class MonoPhoneNode : public rclcpp::Node
{
public:
    MonoPhoneNode()
        : Node("mono_phone_node")
    {
        // Parameters for ORB-SLAM3
        this->declare_parameter<std::string>("vocab_file", "/home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/Vocabulary/ORBvoc.txt");
        this->declare_parameter<std::string>("settings_file", "/home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/Examples/Monocular/phone_camera.yaml");

        this->get_parameter("vocab_file", vocab_file_);
        this->get_parameter("settings_file", settings_file_);

        // Create SLAM system. It initializes all system threads and gets ready to process frames.
        slam_ = std::make_shared<ORB_SLAM3::System>(vocab_file_, settings_file_, ORB_SLAM3::System::MONOCULAR, true);
        image_scale_ = slam_->GetImageScale();

        // Subscribe to image topic
        image_sub_ = this->create_subscription<sensor_msgs::msg::Image>(
            "camera/image_raw", 10, std::bind(&MonoPhoneNode::imageCallback, this, std::placeholders::_1));
    }

private:
    void imageCallback(const sensor_msgs::msg::Image::SharedPtr msg)
    {
        cv_bridge::CvImagePtr cv_ptr;
        try
        {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        }
        catch (cv_bridge::Exception& e)
        {
            RCLCPP_ERROR(this->get_logger(), "cv_bridge exception: %s", e.what());
            return;
        }

        cv::Mat im = cv_ptr->image;

        if (image_scale_ != 1.f)
        {
            int width = im.cols * image_scale_;
            int height = im.rows * image_scale_;
            cv::resize(im, im, cv::Size(width, height));
        }

        double tframe = this->now().seconds();

        // Pass the image to the SLAM system
        slam_->TrackMonocular(im, tframe);
    }

    std::string vocab_file_;
    std::string settings_file_;
    std::shared_ptr<ORB_SLAM3::System> slam_;
    float image_scale_;
    rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr image_sub_;
};

int main(int argc, char **argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<MonoPhoneNode>());
    rclcpp::shutdown();
    return 0;
}
