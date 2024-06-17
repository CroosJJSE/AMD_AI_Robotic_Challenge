import cv2

def main():
    # Attempt to open /dev/video2
    cap = cv2.VideoCapture('/dev/video2')

    if not cap.isOpened():
        print("Error: Could not open /dev/video2, trying /dev/video3")
        cap = cv2.VideoCapture('/dev/video3')

        if not cap.isOpened():
            print("Error: Could not open /dev/video3 either")
            return

    while True:
        ret, frame = cap.read()

        if not ret:
            print("Error: Failed to capture image")
            break

        cv2.imshow('Frame', frame)

        if cv2.waitKey(1) & 0xFF == 27:
            break

    cap.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    main()
