import pyvisa
import time

rm = pyvisa.ResourceManager('@py')  # using pyvisa-py

print(rm.list_resources())  # list all devices

inst = rm.open_resource('USB0::1155::30016::SPD3ECAX1L1522::0::INSTR')
inst.query_delay = 0.01 # query delay is necessary

print(inst.query('*IDN?'))  # ask device what it is
print(inst.query('CH1:VOLTage?'))   # query CH1 set voltage
print(inst.query('MEAsure:VOLTage? CH1'))   # query CH1 measured voltage
print(inst.query('MEAsure:CURRent? CH1'))   # query CH1 measured current

# Some delay can be necessary to ensure the values are set before turning channel on.
inst.write('CH1:VOLTage 13.37')   # set CH1 voltage
time.sleep(0.01)
inst.write('CH1:CURRent 1.23')  # set CH1 current limit
time.sleep(0.01)
inst.write('OUTPut CH1, ON')   # turn on CH1

# See the MATLAB code for more examples.
