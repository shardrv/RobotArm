#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dhruv/RobotArm/WAMwkspc/src/ros/rosunit"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dhruv/RobotArm/WAMwkspc/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dhruv/RobotArm/WAMwkspc/install/lib/python2.7/dist-packages:/home/dhruv/RobotArm/WAMwkspc/build/rosunit/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dhruv/RobotArm/WAMwkspc/build/rosunit" \
    "/home/dhruv/anaconda2/bin/python" \
    "/home/dhruv/RobotArm/WAMwkspc/src/ros/rosunit/setup.py" \
    build --build-base "/home/dhruv/RobotArm/WAMwkspc/build/rosunit" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dhruv/RobotArm/WAMwkspc/install" --install-scripts="/home/dhruv/RobotArm/WAMwkspc/install/bin"
