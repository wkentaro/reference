#!/usr/bin/env python
import numpy as np
import cv2

drag_start = None
sel = (0,0,0,0)

def onmouse(event, x, y, flags, param):
    global drag_start, sel
    if event == cv2.EVENT_LBUTTONDOWN:
        drag_start = x, y
        sel = 0,0,0,0
    elif event == cv2.EVENT_LBUTTONUP:
        drag_start = None
    elif drag_start:
        minpos = min(drag_start[0], x), min(drag_start[1], y)
        maxpos = max(drag_start[0], x), max(drag_start[1], y)
        sel = minpos[0], minpos[1], maxpos[0], maxpos[1]

        img = selected.copy()
        gray = cv2.cvtColor(selected, cv2.COLOR_BGR2GRAY)
        gray = cv2.cvtColor(gray, cv2.COLOR_GRAY2BGR)
        mask = cv2.cvtColor(selected, cv2.COLOR_BGR2GRAY)

        cv2.rectangle(mask, (sel[0], sel[1]), (sel[2], sel[3]),
                (0,0,0), thickness=cv2.cv.CV_FILLED)

        # print img[mask == 0]
        # print gray[mask == 0]
        # print img
        # print gray
        img[mask==0] = gray[mask==0]
        # img = cv2.bitwise_and(img, gray, mask)
        # cv2.add(img, gray)

        cv2.imshow("selected", img)

if __name__ == '__main__':
    cv2.namedWindow("selected", 1)
    cv2.setMouseCallback("selected", onmouse)

    img=cv2.imread('lena.png', 1)
    sel = (0,0,0,0)
    drag_start = None
    selected = img.copy()
    cv2.imshow("selected", selected)
    cv2.waitKey(0)
    cv2.destroyAllWindows()
