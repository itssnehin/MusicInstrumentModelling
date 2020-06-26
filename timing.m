clear;
notes;
tic;
for i = 1:1000
    f=piano(C(7), 1);
end
toc;
% fprintf("Note Time = %d \n",t/1000);

tic;
for i = 1:1000
    g=chord_piano(C(7),G(7),E(7), 1);
end
toc;
% fprintf("Chord Time = %d \n",c/1000);