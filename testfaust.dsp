import("stdfaust.lib");

freq  = hslider("freq",  440, 20, 2000, 0.1);
gain  = hslider("gain",  0.5, 0,  1,    0.01);
att   = hslider("att",   0.01, 0.001, 2, 0.001);
rel   = hslider("rel",   0.3,  0.001, 4, 0.001);
trig  = button("trig");

env = en.adsr(att, rel, 1.0, rel, trig);
osc = os.osc(freq);
process = osc * env * gain <: _, _;
