#!/usr/bin/env python
# -*- coding: utf-8 -*-
# rotation.py
# author: Kentaro Wada <www.kentaro.wada@gmail.com>

from OpenGL.GL import *

import glut_ui
import glbase
import baseview


class Rotation(baseview.BaseView):
    def __init__(self):
        super(Rotation, self).__init__()
        self.head = 0

    def onMotion(self, x, y):
        # 回転角度
        self.head += (x - self.x)
        self.x = x
        self.y = y
        # 再描画したいのでTrueを返す
        return True

    def updateView(self):
        glRotate(self.head, 0, 1, 0)
        print("==> GL_MODELVIEW_MATRIX {0}".format(self.head))
        print(glGetFloatv(GL_MODELVIEW_MATRIX))


if __name__=="__main__":
    import triangle
    glut_ui.run(glbase.BaseController(Rotation(), triangle.Triangle()))