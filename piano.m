function note = piano(f, t_max)

fs = 44100;
dt = 1/fs;
t = 0:dt:t_max;


w = 2*pi*f;

eg = 0.6*sin(w*t) .* exp(-0.0015*w*t);
eg = eg + 0.4*sin(2*w*t) .* exp(-0.0015*w*t);
eg = eg + eg.*eg.*eg;
eg = eg .*( 1 +16*t.*exp(-6*t));

note = eg;