notes;

input = audioread('samples/C4.m4a');

[p_real,f_real] = pspe  ctrum(input,44100);

[p_gen,f_gen] = pspectrum(piano(C(4),4),44100);
subplot(2,1,1);
plot(f_real,pow2db(p_real));
grid on
xlabel('Frequency (kHz)');
ylabel('Power Spectrum (dB)');

subplot(2,1,2);
plot(f_gen,pow2db(p_gen))
grid on
xlabel('Frequency (kHz)')
ylabel('Power Spectrum (dB)')



% soundsc(input,44100)
% pause (5)
% soundsc(piano(C(4),5),44100);