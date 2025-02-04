This is my personal repo for testing out OSS tools. It (sometimes) works on my machine. If your machine != my machine, I don't support it.

That said,


        make venv; # creates a python virtual environment (must be done once)
        source ./install/bin/cadactivate; # sets up the venv (must be done every time)
        make tools -j32 ; # builds and installs tools


