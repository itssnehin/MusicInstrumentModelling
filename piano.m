function note = piano(f, t_max)
<<<<<<< HEAD
=======
    % f - some input frequency
    % t_max - the duration of the note
    fs = 44100; %fixed sample rate
    dt = 1/fs;
    t = 0:dt:t_max;
    w = 2*pi*f;
    note = 0.6*sin(w*t) + 0.4*sin(2*w*t) + 0.03*sin(4*w*t); %first three freq added
    note = note + 0.02*sin(5*w*t) + 0.025*sin(7*w*t); % last two freq added
    note = note.*exp(-0.002*w*t); % multiply by decaying factor
end
>>>>>>> 181f7ce84457780a03d6ddedc6f4443133e3c271
