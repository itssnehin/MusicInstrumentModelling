clear;
notes;

input=audioread('samples/G4.m4a');
generated=0.2*piano(G(4),2);
[p_real,f_real] = pspectrum(input,44100,'FrequencyLimits',[0 6000]);

[p_gen,f_gen] = pspectrum(generated,44100,'FrequencyLimits',[0 6000]);

figure
subplot(2,1,1);
plot(f_real,pow2db(p_real),'color','g');
    grid on
    title('Real Sample of G4')
    xlabel('Frequency (Hz)');
    ylabel('Power (dB)');

subplot(2,1,2);
plot(f_gen,pow2db(p_gen),'color','m')
    grid on
    title('Generated G4')
    xlabel('Frequency (Hz)')
    ylabel('Power (dB)')

figure
subplot(2,1,1);
    plot(input,'color','g')
    title('Real Sample of G4')
    grid on
    ylabel('Amplitude')
    xlabel('Seconds');
subplot(2,1,2);
    plot(generated,'color','m')
    grid on
    title('Generated G4')
    ylabel('Amplitude')
    xlabel('Seconds');

    
   
   [y,fs] = audioread('samples/G4.m4a');
%    f= [1 200];
%         y = y(:,1);
%         dt = 1/fs;
%         t = 0:dt:(length(y)*dt)-dt;
%         plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
    figure
    subplot(2,1,1);
    [pxx,w]=periodogram(y);
    plot(w,10*log10(pxx),'color','g')
    
        title('Real Sample of G4')
        grid on
        ylabel('Power/frequency (dB/(rad/sample))')
        xlabel('Radians (rad)');
    subplot(2,1,2);   
    [pxg,wg]=periodogram(generated);
    plot(wg,10*log10(pxg),'color','m')
        grid on
        title('Generated G4')
        ylabel('Power/frequency (dB/(rad/sample))')
        xlabel('Radians (rad)');
