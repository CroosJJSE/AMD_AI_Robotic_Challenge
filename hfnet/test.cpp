#include <iostream>

int main() {
    int num1 = 10;
    int num2 = 10;
    int result;

    try {
        if (num2 == 0) {
            throw "Division by zero error!";
        }
        result = num1 / num2;
        std::cout << "Result: " << result << std::endl;
    } catch (const char* error) {
        std::cerr << "Error: " << error << std::endl;
    }

    return 0;
}