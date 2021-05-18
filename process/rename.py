from PIL import Image
import os

counter = 1

for i in os.listdir('.'):
    if i.endswith('.jpg'):
        img = Image.open(i)
        name, ext = os.path.splitext(i)
        img.save('page' + str(counter) + ext)
        counter += 1
