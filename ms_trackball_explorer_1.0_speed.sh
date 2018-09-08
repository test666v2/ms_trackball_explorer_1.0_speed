#!/bin/bash

###################################################

# This script sets a onetime value for the mouse pointer speed for Microsoft Trackball Explorer 1.0 PS2/USB

# adapt as needed (crontab or something else)

###################################################

# DISCLAIMER

# Use this script at your own risk
# You, as a user, have no right to support even if implied
# Carefully read the script and then interpret, modify, correct, fork, disdain, whatever

###################################################

#Copyright (c) <2018> <test666v2>
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

###################################################

# working on Debian stable and testing, LXDE; YMMV

# Customize the $speed value to suit your needs

speed="9.000000"

###################################################

mouse_id=$(xinput --list | grep "slave  pointer" | grep "Microsoft" | tr '\t' '\n' | grep "id=" | cut -c 4-5)
mouse_id_matrix=$(xinput --list-props 13 | grep Coordinate | tr '\t' '\n' | grep Matrix | tr ' ' '\n' | grep "(" | cut -c 2- | sed 's/).*//')
xinput --set-prop $mouse_id $mouse_id_matrix $speed, 0.000000, 0.000000, 0.000000, $speed, 0.000000, 0.000000, 0.000000, 1.000000
