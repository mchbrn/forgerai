from PIL import Image
import os
import shutil

for i in os.listdir('.'):
    if i.endswith('.jpg'):
        name, ext = os.path.splitext(i)
        if ((int(name) + 1) % 4 == 0):
            shutil.move(i, "../validating")
