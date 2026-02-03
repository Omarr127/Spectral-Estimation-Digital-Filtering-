% 1. Read the audio file and get the sampling frequency
[X, Fs] = audioread('music_test_fayrouz.mp3'); % Fs = 32000 Hz

% 2. Select ~3 sec segment (at Fs=32000) from 100,000 samples
Y = X(3e5:4e5, 1); 

% 3. Plot the original audio segment
n = 0:length(Y)-1;
ts = 1/Fs;
t = n * ts;
figure;
plot(t, Y);                      
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Original Audio Signal - 3 sec Segment');
grid on;



%  4.Interference tone parameters
tone_freq = 15.2e3;         
A = 1.8;                           
Y_Interference = A * sin(2 * pi * tone_freq * t); 
Y_total = Y + Y_Interference'; % Add interference tone to the audio segment

% 5. Plot the audio with interference
figure;
plot(t, Y_total);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Audio Signal with 15.2 kHz Interference');
grid on;

% Play the original audio and the audio with interference
sound(Y, Fs);
sound(Y_total, Fs);


% 6. Spectral Analysis with different Welch parameters
FFTSize = 1024;
WindowSize = 1024;
window_types = {'kaiser', 'hann', 'blackman', 'rect'};  
overlap_percentage = 0.5;  

for i = 1:length(window_types)
    Plot_Spectrum(Y_total, Fs, FFTSize, WindowSize, window_types{i}, overlap_percentage);
end



%7.Affect of each parameter on the PSD


% 1)Effect of FFT size on spectrum


% FFT sizes to analyze
FFT_sizes = [512, 1024, 4096];
window_type = 'rect';  % Use only rectangular window
overlap_percentage = 0.5;  % 50% overlap

% Loop over different FFT sizes to calculate and plot the PSD
for j = 1:length(FFT_sizes)
    FFTSize = FFT_sizes(j);  
    WindowSize = FFTSize;   
    Plot_Spectrum(Y_total, Fs, FFTSize, WindowSize, window_type, overlap_percentage);  
    titleStr = sprintf('FFT Size = %d', FFTSize);  
    title(titleStr, 'FontSize', 14); 
end



% 2) Window Size 
% Window sizes to analyze
window_sizes = [1024, 4096];
window_type = 'rect';  % Use rectangular window
overlap_percentage = 0.5;  % 50% overlap

% Loop over different window sizes to calculate and plot the PSD
for j = 1:length(window_sizes)
    WindowSize = window_sizes(j);  
    FFTSize = 1024;   % Use a fixed FFT size
    Plot_Spectrum(Y_total, Fs, FFTSize, WindowSize, window_type, overlap_percentage);  
    titleStr = sprintf('Window Size = %d', WindowSize);  
    title(titleStr, 'FontSize', 14); 
end



% 3)window types ->Already done in step 6 and observations written in the report



% 4) Overlap Percentage


window_type = 'rect';  % Use only rectangular window
FFTSize = 1024;  % Use a fixed FFT size  (1024) for comparison

% Overlap percentages to analyze
overlap_percentages = [0, 0.25, 0.5];  

% Loop over different overlap percentages to calculate and plot the PSD
for j = 1:length(overlap_percentages)
    overlap_percentage = overlap_percentages(j); 
    WindowSize = FFTSize;  
    
    % Call the existing Plot_Spectrum function to plot the PSD
    Plot_Spectrum(Y_total, Fs, FFTSize, WindowSize, window_type, overlap_percentage);
    
    % Adding the overlap percentage on the plot
    titleStr = sprintf('Overlap Percentage = %.0f%%', overlap_percentage * 100);  
    title(titleStr, 'FontSize', 14);  
end


% 5) Sampling Frequency (Fs)


window_type = 'rect';  % Use only rectangular window
FFTSize = 1024;  % Use a fixed FFT size (1024) for comparison

% Different sampling frequencies to analyze
Fs_values = [32000, 16000]; 

% Loop over different sampling frequencies to calculate and plot the PSD
for j = 1:length(Fs_values)
    Fs = Fs_values(j); 
    WindowSize = FFTSize; 
    
    % Call the existing Plot_Spectrum function to plot the PSD
    Plot_Spectrum(Y_total, Fs, FFTSize, WindowSize, window_type, 0.5);  
    
    % Adding the sampling frequency on the plot
    titleStr = sprintf('Sampling Frequency = %d Hz', Fs);
    title(titleStr, 'FontSize', 14);  
end
