import os
from PIL import Image

counter = 0

for i in os.listdir('.'):
    if i.endswith('.jpg'):
        page = Image.open(i)
        
        pageWidth, pageHeight = page.size
        wordWidth = round(pageWidth / 4)
        wordHeight = round(pageHeight / 10)
       
        for j in range(0, pageHeight, wordHeight):
            for k in range(0, pageWidth, wordWidth):
                # Crop to desired size
                left, top, right, bottom = k + 30, j + 50, (k + wordWidth) - 30, (j + wordHeight) - 85
                wordDim = (left, top, right, bottom)
                word = page.crop(wordDim)
                word.save(str(counter) + '.jpg')
                counter += 1
