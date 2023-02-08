c = 340;                    % Sound velocity (m/s)
fs = 16000;                 % Sample frequency (samples/s)
r = [2 1.5 2];              % Receiver position [x y z] (m)
s = [2 3.5 2];              % Source position [x y z] (m)
L = [5 4 6];                % Room dimensions [x y z] (m)
beta = 0.6;                 % Reverberation time (s)
n = 4096;                   % Number of samples

h = rir_generator(c, fs, r, s, L, beta, n);

mic_to_plot = 1;

figure;
subplot(311);
plot([0:n-1], h(mic_to_plot,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(mic_to_plot)]);
xlabel('Time (sample)');
ylabel('Amplitude');
legend('RIR generator');


% half the room size
L = [1 2 3]; 
h_half= rir_generator(c, fs, r, s, L, beta, n);

subplot(312);

plot([0:n-1], h_half(mic_to_plot,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(mic_to_plot)], 'half');
xlabel('Time (sample)');
ylabel('Amplitude');
legend('RIR generator');


% double the room size
L = [4 8 12]; 
h_double = rir_generator(c, fs, r, s, L, beta, n);

subplot(313);

plot([0:n-1], h_double(mic_to_plot,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(mic_to_plot)], 'double');
xlabel('Time (sample)');
ylabel('Amplitude');
legend('RIR generator');
