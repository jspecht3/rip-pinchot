Steps to run

1) Clone the repo
    - git clone git@github.com:jspecht3/rip-pinchot.git
2) Go into the repo
    - cd rip-pinchot
3) Install openmc w/ the polygon tally
    - git clone git@github.com:jspecht3/openmc-polygon-tally.git
    - cd openmc-polygon-tally
    - mkdir build
    - cd build
    - cmake ..
    - make
    - sudo make install
4) Installing the python side
    - cd .../rip-pinchot/openmc-polygon-tally/
    - python -m pip install .
5) Change the openmc directory location in run command shell file
    - export OPENMC_dir=.../rip-pinchot/openmc-polygon-tally/build/bin/openmc
    - ??? is this how this one works
6) Run the test file to make sure everything is working (p=100, b=10000, i=2500)
    - python testing.py
7) Verify the paramater num_sides is being stored
    - vi tallies.xml
    - On lines 7 and 15, there should be a num_sides variable
8) Ensure openmc can run these xml files
    - openmc -s XXX
    - If the simulation runs, it is good to go
9) Remove all testing files
    - bash remove.sh
10) Run the real files
    - python complete.py
11) Run openmc with the real files
    - openmc -s XXX
    - with 40 threads, the simulation should take ~9 hours
