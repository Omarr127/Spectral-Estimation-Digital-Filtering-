function Hd = Hamming
%HAMMING Returns a discrete-time filter object.

% FIR Window Lowpass filter designed using the FIR1 function.
% Frequency values are in Hz (32e3 Hz = 32 kHz)

Fs = 32e3;  % Sampling Frequency in Hz

N    = 200;        % Filter order
Fc   = 15e3;       % Cutoff Frequency in Hz
flag = 'scale';    % Normalization flag

% Create the window vector
win = hamming(N+1);

% Design the FIR filter
b  = fir1(N, Fc/(Fs/2), 'low', win, flag);
Hd = dfilt.dffir(b);

% Visualize frequency response using FVTool 
fvtool(Hd, 'Fs', Fs);




% Plot impulse response from filter coefficients
figure;
stem(b, 'filled');
title('Impulse Response of the Filter');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;



end
