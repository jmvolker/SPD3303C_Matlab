# MATLAB
Matlab Code to control the Siglent SPD3303C Lab Bench Power Supply.

NI VISA Drivers might be necessary.

Create an initialisation script with the Instrument Control Toolbox first.


# Python
I added some python code as well. It uses pyvisa-py as visa driver and pyvisa for instrument control, so those packages have to be installed. Make sure (udev rules) your user is allowed to access USB. It might be necessary to adjust the query delay, but 10 ms seem to work fine with my SPD3303C.
