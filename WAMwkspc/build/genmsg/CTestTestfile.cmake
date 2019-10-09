# CMake generated Testfile for 
# Source directory: /home/dhruv/RobotArm/WAMwkspc/src/genmsg
# Build directory: /home/dhruv/RobotArm/WAMwkspc/build/genmsg
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_genmsg_nosetests_test "/home/dhruv/RobotArm/WAMwkspc/build/genmsg/catkin_generated/env_cached.sh" "/home/dhruv/anaconda2/bin/python" "/home/dhruv/RobotArm/WAMwkspc/src/catkin/cmake/test/run_tests.py" "/home/dhruv/RobotArm/WAMwkspc/build/genmsg/test_results/genmsg/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/dhruv/RobotArm/WAMwkspc/build/genmsg/test_results/genmsg" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/dhruv/RobotArm/WAMwkspc/src/genmsg/test --with-xunit --xunit-file=/home/dhruv/RobotArm/WAMwkspc/build/genmsg/test_results/genmsg/nosetests-test.xml")
subdirs(gtest)
