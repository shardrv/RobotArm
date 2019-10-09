# CMake generated Testfile for 
# Source directory: /home/dhruv/RobotArm/WAMwkspc/src/ros/rosclean
# Build directory: /home/dhruv/RobotArm/WAMwkspc/build/rosclean
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosclean_nosetests_test "/home/dhruv/RobotArm/WAMwkspc/build/rosclean/catkin_generated/env_cached.sh" "/home/dhruv/anaconda2/bin/python" "/home/dhruv/RobotArm/WAMwkspc/src/catkin/cmake/test/run_tests.py" "/home/dhruv/RobotArm/WAMwkspc/build/rosclean/test_results/rosclean/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/dhruv/RobotArm/WAMwkspc/build/rosclean/test_results/rosclean" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/dhruv/RobotArm/WAMwkspc/src/ros/rosclean/test --with-xunit --xunit-file=/home/dhruv/RobotArm/WAMwkspc/build/rosclean/test_results/rosclean/nosetests-test.xml")
subdirs(gtest)
