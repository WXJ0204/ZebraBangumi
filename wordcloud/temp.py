# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

from os import path,listdir
from PIL import Image
import numpy as np
import matplotlib.pyplot as plt

from wordcloud import WordCloud, STOPWORDS

d = path.dirname(__file__)
d2 = d + '/ciyun'

for file in listdir(d2):
    # Read the whole text.
    text = open(path.join(d2, file),encoding='UTF-8').read()

    # read the mask image
    mask = np.array(Image.open(path.join(d, "awrq.jpg")))

    stopwords = set(STOPWORDS)
    stopwords.add("said")

    wc = WordCloud(background_color="white",
                   font_path="Dengb.ttf",
                   max_words=200, 
                   mask=mask,
                   stopwords=stopwords)
    # generate word cloud
    wc.generate(text)

    # store to file
    wc.to_file(path.join(d, file+".png"))

    # show
    plt.imshow(wc, interpolation='bilinear')
    plt.axis("off")
    plt.figure()
    plt.imshow(mask, cmap=plt.cm.gray, interpolation='bilinear')
    plt.axis("off")
    #plt.show()

