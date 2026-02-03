function Hd = Leastsquares
%LEASTSQUARES Returns a discrete-time filter object.

% FIR Least-Squares Lowpass filter designed using the FIRLS function.
% Frequency values are in Hz (32e3 Hz = 32 kHz)

Fs = 32e3;  % Sampling Frequency in Hz

N     = 150;   % Filter order
Fpass = 14.6e3; % Passband frequency in Hz
Fstop = 15e3;   % Stopband frequency in Hz
Wpass = 1;     % Passband weight
Wstop = 1;     % Stopband weight

% Calculate the coefficients using the FIRLS function.
b  = firls(N, [0 Fpass Fstop Fs/2]/(Fs/2), [1 1 0 0], [Wpass Wstop]);
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
