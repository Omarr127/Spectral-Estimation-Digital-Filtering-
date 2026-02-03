% Read the audio file and get the sampling frequency
[X, Fs] = audioread('music_test_fayrouz.mp3'); % Fs = 32000 Hz

% Select ~3 sec segment (at Fs=32000) from 100,000 samples
Y = X(3e5:4e5, 1); 

% original audio segment
n = 0:length(Y)-1;
ts = 1/Fs;
t = n * ts;

% Interference tone parameters
tone_freq = 15.2e3;         
A = 1.8;                           
Y_Interference = A * sin(2 * pi * tone_freq * t); 
Y_total = Y + Y_Interference'; % Add interference tone to the audio segment

% plot spectrum of original audio
Plot_Spectrum(Y,Fs,1024,1024,'rect',0.5);

%play the original audio
sound(Y,Fs);


% plot spectrum of noisy audio
Plot_Spectrum(Y_total,Fs,1024,1024,'rect',0.5);

%play the noisy audio
sound(Y_total,Fs);


% Equiripple filtering

% Apply Equiripple filter using coefficients b4
Y_Filtered=filter(b4,1,Y_total);

% Plot spectrum of filtered audio
Plot_Spectrum(Y_Filtered, Fs, 1024, 1024, 'rect', 0.5);% Using 'rect' window (no specific window) 

%play the filtered audio
sound(Y_Filtered,Fs)


% Ensure audio is within the range of [-1, 1] before saving
Y_total = max(min(Y_total, 1), -1);   % Clipping to avoid values exceeding the range
Y_Filtered = max(min(Y_Filtered, 1), -1); 

% Save the original, noisy, and filtered audio without clipping
audiowrite('original_audio.mp3', Y, Fs);
audiowrite('noisy_audio.mp3', Y_total, Fs);
audiowrite('filtered_audio.mp3', Y_Filtered, Fs);