import os
from PIL import Image

for i in os.listdir('.'):
    if i.endswith('.jpg'):
        img = Image.open(i)
        img_resize = img.resize((118, 57))
        img_resize.save(i)
