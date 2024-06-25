import pyudev
import time
import subprocess

def find_webcam():
    context = pyudev.Context()
    for device in context.list_devices(subsystem='video4linux'):
        if 'video' in device.device_node:
            return device
    return None

def reset_usb_device(device):
    parent = device.find_parent('usb', 'usb_device')
    if parent:
        dev_path = parent.device_node
        with subprocess.Popen(['sudo', 'tee', f'/sys/bus/usb/devices/{parent.sys_name}/authorized'], stdin=subprocess.PIPE, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, text=True) as proc:
            proc.communicate(input='0')
        time.sleep(2)
        with subprocess.Popen(['sudo', 'tee', f'/sys/bus/usb/devices/{parent.sys_name}/authorized'], stdin=subprocess.PIPE, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, text=True) as proc:
            proc.communicate(input='1')
    else:
        print("Could not find the USB device parent")

def main():
    webcam = find_webcam()
    if webcam:
        print(f"Webcam found: {webcam.device_node}")
        reset_usb_device(webcam)
        print("Webcam disconnected and reconnected.")
    else:
        print("No webcam found.")

if __name__ == "__main__":
    main()
