#!/bin/bash
Xvfb :1 +extension GLX +render -noreset -screen 0 3840x2160x24& DISPLAY=:1 /usr/bin/xfce4-session >> /root/xsession.log 2>&1 &
x11vnc -loop -usepw -display :1
exit 0
