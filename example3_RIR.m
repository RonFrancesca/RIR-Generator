c = 340;                    % Sound velocity (m/s)
fs = 16000;                 % Sample frequency (samples/s)
r = [10 1.5 2 ; 10 1.5 2];    % Receiver positions [x_1 y_1 z_1 ; x_2 y_2 z_2] (m)
s = [2 3.5 2];              % Source position [x y z] (m)
L = [10 4 6];                % Room dimensions [x y z] (m)
beta = 0.4;                 % Reverberation time (s)
n = 4096;                   % Number of samples
mtype = 'sub-cardioid';     % Type of microphone
order = -1;                 % -1 equals maximum reflection order!
dim = 3;                    % Room dimension
orientation = 0;            % Microphone orientation (rad)
hp_filter = 1;              % Enable high-pass filter

h = rir_generator(c, fs, r, s, L, beta, n, mtype, order, dim, orientation, hp_filter);

figure;
subplot(211);
plot([0:n-1], h(1,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(1)]);
xlabel('Time (s)');
ylabel('Amplitude');
legend('RIR generator');

subplot(212);
plot([0:n-1], h(2,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(1)]);
xlabel('Time (s)');
ylabel('Amplitude');
legend('RIR generator');

subplot(313);
plot([0:n-1], h(1,1:n), 'b')
xlim([0 (n-1)]);
title(['Room impulse response at microphone ', num2str(1)]);
xlabel('Time (s)');
ylabel('Amplitude');
legend('RIR generator');