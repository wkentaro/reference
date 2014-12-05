#-*- coding: utf-8 -*-
# thresh.py
import cv2
import numpy as np

img = cv2.imread('../data/classic.png')
gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
# ret, thresh1 = cv2.threshold(src=gray_img, thresh=127, maxval=255, type=cv2.THRESH_BINARY)
thresh = cv2.adaptiveThreshold(gray_img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
        cv2.THRESH_BINARY,11,2)

cv2.imshow('img', img)
cv2.imshow('gray_img', gray_img)
cv2.imshow('thresh', thresh)

key = cv2.waitKey(0)
if key == 27:
    cv2.destroyAllWindows() 
