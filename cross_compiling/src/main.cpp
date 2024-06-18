#include <iostream>
#include <string>

// Example class
class MyClass {
public:
    void printMessage(const std::string& message) {
        std::cout << "Message: " << message << std::endl;
    }
};

int main() {
    MyClass myObject;
    myObject.printMessage("Hello, cross-compiling!");

    return 0;
}