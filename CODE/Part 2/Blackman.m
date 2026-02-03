%% 
function Hd = Blackman
%BLACKMAN Returns a discrete-time filter object.

Fs = 32e3;  % Sampling Frequency in Hz (32 kHz)

N    = 180;       % Filter order
Fc   = 15e3;      % Cutoff frequency in Hz (15 kHz)
flag = 'scale';   % Normalization flag

% Create the window vector
win = blackman(N+1);

% Design filter
b  = fir1(N, Fc/(Fs/2), 'low', win, flag);
Hd = dfilt.dffir(b);

% Plot the frequency response in kHz using FVTool
fvtool(Hd, 'Fs', Fs);



% Plot impulse response from filter coefficients 
figure;
stem(b, 'filled');
title('Impulse Response of the Filter');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;
