#-*- coding: utf-8 -*-
# background_subtractor_mog.py
import numpy as np
import cv2

# import get_rectangles


def main():
    cap = cv2.VideoCapture('../data/classic.mp4')
    cap.set(cv2.cv.CV_CAP_PROP_POS_AVI_RATIO, 0.5)
    # cap.set(cv2.cv.CV_CAP_PROP_POS_FRAMES, 1000)

    fgbg = cv2.BackgroundSubtractorMOG2()

    kernel = np.ones((10,10),np.uint8)

    while True:
        ret, frame = cap.read()
        if ret is False:
            break

        # ret, thresh = cv2.threshold(imgray, 127, 255,0)
        fgmask = fgbg.apply(frame)
        fgmask = cv2.morphologyEx(fgmask, cv2.MORPH_CLOSE, kernel)
        # fgmask2 = fgmask.copy()

        # contours, hierarchy = cv2.findContours(fgmask2,
        #         cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
        # cv2.drawContours(frame, contours, -1, (0,255,0), 3)

        # get_rectangles.get_rectangles(fgmask)

        cv2.imshow('origin', frame)
        cv2.imshow('fgmask', fgmask)

        k = cv2.waitKey(30) & 0xff
        if k == 27:
            break

    cap.release()
    cv2.destroyAllWindows()


if __name__ == '__main__':
    main()
