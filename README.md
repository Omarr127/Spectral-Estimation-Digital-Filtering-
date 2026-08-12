# Digital Signal Processing: Spectral Estimation & Filter Design

A MATLAB-based **Digital Signal Processing (DSP)** project focused on **audio signal analysis, spectral estimation, sinusoidal interference removal, and digital filter design**.

## Overview

The project analyzes an audio signal in both the **time and frequency domains**, identifies unwanted frequency components, introduces controlled sinusoidal interference, and designs digital filters to reduce the interference.

The project evaluates filter performance using **frequency response, SNR, computational complexity, latency, and attenuation**.

## Objectives

- Analyze audio signals in the **time domain**.
- Analyze frequency components using **FFT**.
- Estimate spectral content using **Welch Power Spectral Density (PSD)**.
- Introduce controlled **sinusoidal interference**.
- Identify unwanted frequency components.
- Design and compare **FIR and IIR filters**.
- Evaluate filter performance using **SNR and frequency response**.
- Select an appropriate filter based on **performance and computational complexity**.

## Methodology

### 1. Audio Signal Analysis

The original audio signal is loaded into MATLAB and analyzed using:

- Signal amplitude
- Duration
- Sampling frequency
- Time-domain waveform

The signal is then analyzed in the frequency domain to identify its main spectral components.

### 2. Frequency-Domain Analysis

The **Fast Fourier Transform (FFT)** is used to transform the audio signal from the time domain into the frequency domain.

MATLAB visualizations are used to examine:

- Frequency spectrum
- Magnitude spectrum
- Spectral peaks
- Frequency components

### 3. Welch PSD Estimation

The **Welch Power Spectral Density (PSD)** method is applied to obtain a reliable estimate of the signal's frequency content.

Different parameters can be evaluated, including:

- FFT size
- Window type
- Segment length
- Overlap percentage

This analysis helps identify unwanted frequency components and study spectral leakage.

### 4. Sinusoidal Interference

Controlled sinusoidal components are added to the original audio signal to simulate unwanted interference.

The corrupted signal is then analyzed using **FFT and Welch PSD** to identify the interference frequencies.

### 5. Digital Filter Design

Digital filters are designed to suppress the identified interference.

Both **FIR** and **IIR** filter approaches are considered.

The filters are evaluated according to:

- Passband ripple
- Stopband attenuation
- Filter order
- Frequency response
- Computational complexity
- Latency

### 6. Filter Evaluation

MATLAB is used to visualize and compare the filter responses.

The evaluation includes:

- Magnitude-frequency response
- Time-domain waveform
- Frequency-domain spectrum
- Interference suppression
- Signal quality

### 7. SNR Evaluation

The **Signal-to-Noise Ratio (SNR)** is used to evaluate signal quality before and after filtering.

The objective is to reduce unwanted interference while preserving the desired audio components.

### 8. Filter Selection

Candidate filters are compared using a **performance-efficiency trade-off**.

The final design considers:

- SNR improvement
- Stopband attenuation
- Passband ripple
- Computational complexity
- Filter order
- Latency

## Results

The project evaluates the difference between:

- **Original audio signal**
- **Corrupted audio signal**
- **Filtered audio signal**

MATLAB plots are used to visualize the results in both the **time and frequency domains**.

The final filter is selected based on its ability to suppress the targeted interference while maintaining acceptable signal quality and computational efficiency.

## MATLAB Visualizations

The project generates MATLAB plots for:

- Original audio waveform
- Corrupted audio waveform
- Filtered audio waveform
- FFT magnitude spectrum
- Welch PSD spectrum
- FIR filter frequency response
- IIR filter frequency response
- Before/after frequency-domain comparison
- SNR and filter-performance comparison

## Project Workflow

```text
Audio Input
    ↓
Time-Domain Analysis
    ↓
FFT / Frequency-Domain Analysis
    ↓
Welch PSD Estimation
    ↓
Identify Frequency Components
    ↓
Add Sinusoidal Interference
    ↓
Design FIR/IIR Filters
    ↓
Filter Evaluation
    ↓
Time & Frequency-Domain Validation
    ↓
SNR Evaluation
    ↓
Final Filter Selection
