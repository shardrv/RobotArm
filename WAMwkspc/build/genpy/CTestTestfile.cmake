# CMake generated Testfile for 
# Source directory: /home/dhruv/RobotArm/WAMwkspc/src/genpy
# Build directory: /home/dhruv/RobotArm/WAMwkspc/build/genpy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_genpy_nosetests_test "/home/dhruv/RobotArm/WAMwkspc/build/genpy/catkin_generated/env_cached.sh" "/home/dhruv/anaconda2/bin/python" "/home/dhruv/RobotArm/WAMwkspc/src/catkin/cmake/test/run_tests.py" "/home/dhruv/RobotArm/WAMwkspc/build/genpy/test_results/genpy/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/dhruv/RobotArm/WAMwkspc/build/genpy/test_results/genpy" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/dhruv/RobotArm/WAMwkspc/src/genpy/test --with-xunit --xunit-file=/home/dhruv/RobotArm/WAMwkspc/build/genpy/test_results/genpy/nosetests-test.xml")
subdirs(gtest)
subdirs(scripts)
