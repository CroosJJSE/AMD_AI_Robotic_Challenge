import cv2
import numpy as np

url = 'http://192.168.1.125:8080/video'


cap = cv2.VideoCapture(url) # check this
while(True):
    # Capture frame-by-frame
    ret, frame = cap.read()
    # Our operations on the frame come here
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    # Display the resulting frame
    cv2.imshow("frame",gray)
    if cv2.waitKey(1) & 0xFF == ord("q"):
        break
# When everything done, release the capture
cap.release()