Steps to run

1) Clone the repo
    git clone git@github.com:jspecht3/rip-pinchot.git
2) Go into the repo
    cd rip-pinchot
3) Install openmc w/ the polygon tally
    git clone git@github.com:jspecht3/openmc-polygon-tally.git
    cd openmc-polygon-tally
    mkdir build
    cd build
    cmake ..
    make
    sudo make install
4) Installing the python side
    cd .../rip-pinchot/openmc-polygon-tally/
    python -m pip install .
