# Digital Signal Processing: Spectral Estimation & Filter Design

A MATLAB-based **Digital Signal Processing (DSP)** project focused on spectral estimation, sinusoidal interference analysis, digital filter design, and frequency-domain evaluation for audio signals.

---

## Project Overview

This project develops an audio signal-processing system capable of identifying unwanted frequency components and reducing sinusoidal interference using digital filtering techniques.

The project combines:

- **Time-domain signal analysis**
- **Frequency-domain analysis**
- **Welch Power Spectral Density (PSD) estimation**
- **FFT-based spectral analysis**
- **FIR and IIR digital filter design**
- **Filter frequency-response evaluation**
- **Signal-to-Noise Ratio (SNR) analysis**
- **Computational complexity and latency trade-off analysis**

The overall objective is to design a filtering solution that effectively suppresses unwanted interference while preserving the desired audio signal.

---

## Objectives

The main objectives of the project are to:

1. Analyze an audio signal in both the time and frequency domains.
2. Estimate the signal's power spectral density using the **Welch method**.
3. Identify unwanted sinusoidal frequency components.
4. Introduce controlled sinusoidal interference into the audio signal.
5. Design suitable **FIR and IIR digital filters**.
6. Compare different filter configurations and frequency responses.
7. Evaluate filtering performance using **SNR, attenuation, ripple, latency, and complexity**.
8. Select the most suitable filter using a **complexity-performance trade-off analysis**.
9. Validate the final filtered signal in both the time and frequency domains.

---

# Methodology

## 1. Input Audio Signal

An audio signal is used as the original input to the DSP system.

The signal is initially analyzed in the time domain to observe:

- Amplitude
- Duration
- Sampling frequency
- Signal characteristics

The original signal is then transformed into the frequency domain to investigate its spectral components.

```text
Original Audio Signal
        |
        +----------------------+
        |                      |
        v                      v
Time-Domain Analysis    Frequency-Domain Analysis
