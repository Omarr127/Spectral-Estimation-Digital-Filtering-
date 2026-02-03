function Plot_Spectrum(signal, Fs, FFTSize, WindowSize, win_type, overlap)
   
    % Select window type
    switch win_type
        case 'kaiser'
            beta = 7;
            window = kaiser(WindowSize, beta);  
        case 'hann'
            window = hann(WindowSize);
        case 'blackman'  
            window = blackman(WindowSize);
        case 'rect'
            window = rectwin(WindowSize);
        case 'hamm'
            window = hamming(WindowSize);
        otherwise
            error('Unknown window type. Choose from: kaiser, hann, blackman, rect, hamm.');
    end

    % Calculate PSD using Welch's method
    PSD = pwelch(signal, window, round(overlap * WindowSize), FFTSize, Fs);

    Freq = 0:Fs/FFTSize:Fs/2;  % This creates a frequency range from 0 to Nyquist frequency
    Freq = Freq / 1e3;  % Convert frequency to kHz

    % Plot the Power Spectral Density (PSD)
    figure;
    plot(Freq, 10 * log10(PSD), 'LineWidth', 1.5);
    xlabel('Frequency (kHz)');
    ylabel('PSD (dB/Hz)');
    title(sprintf('Power Spectral Density\nWindow Type: %s', win_type));
    grid on;
end
