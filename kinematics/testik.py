#!/usr/bin/env python

import meArm

def main():
    arm = meArm.meArm()
    arm.begin()
	
    while True:

        arm.gotoPoint(0, 150, 50)
        arm.gotoPoint(0, 150, 0)
        arm.gotoPoint(0, 150, 150)
        arm.gotoPoint(0, 150, 50)
        arm.gotoPoint(-150, 150, 50)
        arm.gotoPoint(150, 150, 50)
        arm.gotoPoint(0, 150, 50)
        arm.gotoPoint(0, 100, 50)

if __name__ == '__main__':
    main()
