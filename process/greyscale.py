import cv2
import os
import imageio
from PIL import Image

counter = 0

for i in os.listdir('.'):
    if i.endswith('.jpg'):
        img = cv2.imread(i)
        img_grey = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        os.remove(i)
        cv2.imwrite(i, img_grey)
        img = imageio.imread(i)
        print(img.shape)
