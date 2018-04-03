%Michael Nguyen
options = bodeoptions('cstprefs')
options.PhaseVisible = 'off';
options.FreqUnits = 'Hz';
options.ylim = [-60,0];
lowpass = tf([50],[1 50])
highpass = tf([1 0],[1 0.5])
notch = tf([1 0 50*4000],[1 (50+4000) 50*4000])
filter = lowpass*highpass*notch
figure
bodeplot(filter,options)

figure
subplot(1,3,1)
bodeplot(lowpass,options)
subplot(1,3,2)
bodeplot(highpass,options)
subplot(1,3,3)
bodeplot(notch,options)

