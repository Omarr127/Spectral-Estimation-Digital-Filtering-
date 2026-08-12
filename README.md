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

--

```


DIGITAL SIGNAL PROCESSING (DSP)
Spectral Estimation & Digital Filter Design
MATLAB

================================================================================
2. TIME-DOMAIN ANALYSIS
================================================================================

The audio waveform is plotted as a function of time to understand the behavior
of the original signal before interference is introduced.

The analysis considers:

- Signal amplitude
- Duration
- Sampling frequency
- Waveform characteristics

The original signal is later compared with the corrupted and filtered signals.

Original Signal
      |
      +----> Corrupted Signal
      |
      +----> Filtered Signal


================================================================================
3. FREQUENCY-DOMAIN ANALYSIS
================================================================================

Frequency-domain analysis is performed to determine the frequency components
contained in the audio signal.

The Fast Fourier Transform (FFT) is used to transform the signal from the time
domain into the frequency domain.

Time-Domain Signal
        |
        | FFT
        v
Frequency-Domain Spectrum

This makes it easier to identify unwanted frequency components that may not be
obvious in the time-domain waveform.


================================================================================
4. WELCH POWER SPECTRAL DENSITY ESTIMATION
================================================================================

The Welch Power Spectral Density (PSD) method is used to obtain a reliable
estimate of the signal's frequency content.

The signal is divided into overlapping segments, windowed, transformed into the
frequency domain, and averaged to obtain the PSD estimate.

Audio Signal
     |
     v
Divide into Segments
     |
     v
Apply Window
     |
     v
FFT / Periodogram
     |
     v
Average Spectra
     |
     v
Welch PSD Estimate

The following parameters are evaluated:

- FFT size
- Window type
- Segment length
- Overlap percentage

These parameters affect:

- Frequency resolution
- Spectral leakage
- PSD smoothness
- Computational requirements


================================================================================
5. SINUSOIDAL INTERFERENCE
================================================================================

Controlled sinusoidal interference is introduced into the original audio
signal to simulate unwanted frequency components.

The corrupted signal can be represented as:

Corrupted Signal
=
Original Audio
+
Sinusoidal Interference

The overall process is:

Original Audio
       +
Unwanted Sinusoidal Components
       |
       v
Corrupted Audio

The added interference produces identifiable spectral peaks that can be
detected using FFT and Welch PSD analysis.


================================================================================
6. INTERFERENCE IDENTIFICATION
================================================================================

The corrupted signal is analyzed to identify the frequencies associated with
the unwanted sinusoidal components.

Corrupted Audio
       |
       v
FFT / Welch PSD
       |
       v
Spectral Peak Detection
       |
       v
Identify Interference Frequencies

The identified frequencies are then used to determine suitable filter
specifications.


================================================================================
7. DIGITAL FILTER DESIGN
================================================================================

After identifying the unwanted frequency components, digital filters are
designed to suppress the interference.

Two major filter classes are considered.


7.1 FIR FILTERS
----------------

Finite Impulse Response filters are evaluated based on:

- Stability
- Frequency response
- Filter order
- Computational complexity
- Linear-phase characteristics


7.2 IIR FILTERS
----------------

Infinite Impulse Response filters are evaluated based on:

- Filter order
- Computational efficiency
- Frequency response
- Stability
- Latency

The FIR and IIR approaches are compared to determine the most suitable design
for the signal-processing requirements.


================================================================================
8. FILTER DESIGN REQUIREMENTS
================================================================================

The filters are evaluated according to several engineering constraints.

Parameter                 Objective
----------------------------------------------------------------------
Passband Ripple            Minimize signal distortion
Stopband Attenuation       Maximize interference suppression
Filter Order               Reduce unnecessary complexity
Latency                    Minimize processing delay
Computational Complexity   Reduce processing requirements
SNR                        Improve signal quality
Frequency Response         Preserve desired signal components


================================================================================
9. FILTER FREQUENCY RESPONSE
================================================================================

The frequency response of each filter is analyzed to determine how effectively
it suppresses the unwanted frequency components.

The analysis includes:

- Magnitude response
- Passband behavior
- Stopband attenuation
- Transition characteristics
- Interference suppression

Input Spectrum
      |
      v
+----------------------+
|    Digital Filter    |
+----------------------+
      |
      v
Output Spectrum
      |
      v
Reduced Interference


================================================================================
10. FIR/IIR FILTER COMPARISON
================================================================================

Different FIR and IIR configurations are compared based on their
signal-processing performance.

The comparison considers:

Filter Design
     |
     +---- Frequency Response
     |
     +---- Filter Order
     |
     +---- Computational Complexity
     |
     +---- Latency
     |
     +---- Stopband Attenuation
     |
     +---- Passband Ripple
     |
     +---- SNR Improvement

The goal is to select a filter that provides an effective balance between
signal quality and computational requirements.


================================================================================
11. COMPLEXITY-PERFORMANCE TRADE-OFF
================================================================================

A key part of the project is evaluating the trade-off between filtering
performance and computational requirements.

A highly complex filter may provide better suppression but require:

- More computations
- Higher processing cost
- More memory
- Greater latency

A simpler filter may provide lower computational cost but weaker interference
suppression.

Therefore, the objective is to identify an efficient design that satisfies
the required signal-processing constraints.

Higher Filter Complexity
          |
          v
Better Filtering Performance
          |
          v
Higher Computational Cost
          |
          v
Potentially Higher Latency


================================================================================
12. DECISION MATRIX
================================================================================

Candidate filters are compared using multiple criteria.

Criterion                  Importance
----------------------------------------------------------------------
SNR Improvement             High
Stopband Attenuation        High
Passband Ripple             Medium
Computational Complexity    High
Latency                     High
Filter Order                Medium

Each candidate is evaluated based on its overall performance.

The final filter is selected according to the combined
performance-efficiency trade-off rather than a single metric.


================================================================================
13. SIGNAL RECONSTRUCTION
================================================================================

After filtering, the processed signal is reconstructed and analyzed again in
the time domain.

The processing pipeline is:

Original Audio
      |
      v
Add Sinusoidal Interference
      |
      v
Corrupted Audio
      |
      v
Digital Filter
      |
      v
Filtered Audio
      |
      v
Performance Evaluation

The filtered signal is compared with the original signal to evaluate
interference suppression and signal preservation.


================================================================================
RESULTS
================================================================================


================================================================================
14. TIME-DOMAIN RESULTS
================================================================================

The original, corrupted, and filtered signals are compared in the time domain.

Original Signal
      |
      v
Corrupted Signal
      |
      v
Filtered Signal

The comparison is used to evaluate whether the filtering process reduces the
effect of the interference while preserving the overall waveform
characteristics.


================================================================================
15. FREQUENCY-DOMAIN RESULTS
================================================================================

The frequency spectra before and after filtering are compared to evaluate
interference suppression.

Corrupted Spectrum
       |
       v
Large Interference Peaks
       |
       v
Digital Filtering
       |
       v
Filtered Spectrum
       |
       v
Reduced Interference Peaks

The frequency-domain analysis provides direct evidence of attenuation at the
targeted interference frequencies.


================================================================================
16. SNR EVALUATION
================================================================================

The Signal-to-Noise Ratio (SNR) is used as a measure of signal quality.

The system compares:

SNR Before Filtering
        |
        v
Digital Filtering
        |
        v
SNR After Filtering

An effective filter should improve signal quality by suppressing unwanted
interference while minimizing distortion of the desired signal.


================================================================================
17. FINAL FILTER SELECTION
================================================================================

The final filter configuration is selected based on the combined evaluation
of:

- Interference suppression
- SNR improvement
- Passband ripple
- Stopband attenuation
- Computational complexity
- Filter order
- Processing latency

The selected design therefore represents a performance-efficiency trade-off
rather than simply choosing the filter with the strongest attenuation.


================================================================================
PROJECT WORKFLOW
================================================================================

Original Audio
      |
      v
Time-Domain Analysis
      |
      v
FFT / Frequency-Domain Analysis
      |
      v
Welch PSD Estimation
      |
      v
Identify Frequency Components
      |
      v
Add Sinusoidal Interference
      |
      v
Analyze Corrupted Signal
      |
      v
Design FIR/IIR Filters
      |
      v
Evaluate Frequency Response
      |
      v
Compare Complexity and Performance
      |
      v
Decision Matrix
      |
      v
Select Optimal Filter
      |
      v
Filter Corrupted Signal
      |
      v
Time/Frequency-Domain Validation
      |
      v
SNR Evaluation
      |
      v
Final Performance Assessment


================================================================================
TECHNOLOGIES
================================================================================

- MATLAB
- Digital Signal Processing
- Fast Fourier Transform (FFT)
- Welch Power Spectral Density (PSD)
- FIR Digital Filters
- IIR Digital Filters
- Frequency-Domain Analysis
- Time-Domain Analysis
- Spectral Analysis
- Signal-to-Noise Ratio (SNR)
- Filter Performance Evaluation



