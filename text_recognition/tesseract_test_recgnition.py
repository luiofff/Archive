from PIL import Image

import pytesseract

text = pytesseract.image_to_string(Image.open('1.png'), lang="rus")

with open("test.txt", "w") as file:
    file.write(text)
