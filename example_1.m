c = 340;                    % Sound velocity (m/s)
fs = 16000;                 % Sample frequency (samples/s)
r = [2 1.5 2];              % Receiver position [x y z] (m)
s = [2 3.5 2];              % Source position [x y z] (m)
L = [5 4 6];                % Room dimensions [x y z] (m)
beta = [0 0 0 0 0 0];       % Reverberation time (s)
n = 4096;                   % Number of samples

h = rir_generator(c, fs, r, s, L, beta, n);

mic_to_plot = 1

figure;
plot([0:n-1], h(mic_to_plot,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(mic_to_plot)]);
xlabel('Time (sample)');
ylabel('Amplitude');
legend('RIR generator');
