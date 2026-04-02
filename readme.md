ssh into your Norns and clone the Faust repo:
* ssh we@norns.local
* git clone https://github.com/grame-cncm/faust.git

Build it (it takes a while):
* cd faust
* make
* sudo make install

Download the test script:
* cd ~/dust/code/
* git clone https://github.com/alfonsobozzelli/testfaust.git
* cd testfaust
* faust2jackconsole -osc testfaust.dsp