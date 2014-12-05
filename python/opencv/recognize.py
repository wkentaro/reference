#-*- coding: utf-8 -*-
# recognize.py
import cv2
import numpy as np


def get_optflow(cap):
    fb_params = dict(pyr_scale=0.5, levels=3, winsize=15,
                     iterations=3, poly_n=5,
                     poly_sigma=1.1, flags=0)

    ret, current = cap.read()
    current = cv2.cvtColor(current,cv2.COLOR_BGR2GRAY)

    pos = cap.get(cv2.cv.CV_CAP_PROP_POS_AVI_RATIO)
    cap.set(cv2.cv.CV_CAP_PROP_POS_AVI_RATIO, pos-0.01)
    ret, prev = cap.read()
    prev = cv2.cvtColor(prev, cv2.COLOR_BGR2GRAY)

    flow = cv2.calcOpticalFlowFarneback(prev=prev, next=current, **fb_params)

    return flow


def get_humans_fromframe(frame, hog, flow=None):
    mono_frame = cv2.cvtColor(frame, cv2.cv.CV_BGR2GRAY)
    flow_size = np.zeros(flow.shape[0:2])
    for i_row, row in enumerate(flow):
        for i_col, xy in enumerate(row):
            flow_size[i_row][i_col] = np.sqrt(xy[0]**2 + xy[1]**2)
    mono_frame[flow_size < 0.2] = 0
    kernel = np.ones((10,10),np.uint8)
    mono_frame = cv2.morphologyEx(mono_frame, cv2.MORPH_OPEN, kernel)
    cv2.imshow('mono', mono_frame)
    detects, values = hog.detectMultiScale(mono_frame)

    humans = []
    for value, detect in zip(values, detects):
        print value, detect
        if value > 0.01:
            humans.append(detect)

    centers = []
    for human in humans:
        x = int(human[0] + human[2]/2.)
        y = int(human[1] + human[3]/2.)
        centers.append((x, y))
    return centers, humans


def get_musician_label(human):
    if 250 < human[0] < 400:
        return 'chello'
    elif 0 < human[0] < 100:
        return 'violin'


def main():
    video = '../data/classic.mp4'
    cap = cv2.VideoCapture(filename=video)
    cap.set(cv2.cv.CV_CAP_PROP_POS_AVI_RATIO, 0.5)

    hog = cv2.HOGDescriptor()
    hog.setSVMDetector(cv2.HOGDescriptor_getDefaultPeopleDetector())

    while True:
        ret, frame = cap.read()
        if ret is False:
            break

        flow = get_optflow(cap)
        centers, humans = get_humans_fromframe(frame=frame, hog=hog,
                flow=flow)

        for center, human in zip(centers, humans):
            p1 = (human[0], human[1])
            p2 = (human[0]+human[2], human[1]+human[3])
            cv2.rectangle(frame, p1, p2, (0, 255, 0), 2)

            label = get_musician_label(human)
            fontFace = cv2.FONT_HERSHEY_COMPLEX
            cv2.putText(frame, label, center, fontFace=fontFace,
                        fontScale=.5, color=(0, 255, 0))

        cv2.imshow('recognize', frame)
        k = cv2.waitKey(30)
        if k == 27:
            break


if __name__ == '__main__':
    main()
