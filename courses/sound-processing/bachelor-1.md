---
title: Bachelor 1
parent: Sound Synthesis & Processing
grand_parent: Courses
nav_order: 1
---

# Sound Synthesis & Processing: Bachelor 1

**Focus:** Sound as a digital signal: representing it in time and frequency, and building and shaping spectra with linear techniques.

**Path:** **Bachelor 1 (this course)** represent → **Bachelor 2** transform → **Bachelor 3** model → **Master 1** search → **Master 2** learn

| | |
|:--|:--|
| **Duration** | 30h |
| **Study hours** | 150h |
| **CFA** | 5 |
| **Prerequisites** | A basic knowledge of the Python programming language is required, which includes: basic syntax, data types, control structures, functions, and familiarity with key standard libraries (such as math, random, etc.). Additionally, a basic understanding of CSound, a programming language for sound synthesis, is necessary. This includes at least understanding the structure of a .csd file, basic syntax, data types, and the ability to generate a simple sound event using opcodes like oscillators or noise generators. Regarding academic background, a good understanding of mathematics and physics principles covered in high school is required. This includes algebra, geometry, and trigonometry. Finally, a basic knowledge of computer science concepts is necessary. This includes understanding the fundamental components of a computer, the definition of an algorithm, what a program and software are, the definition of a variable, and familiarity with basic data structures. |
| **Evaluation** | Exam |

## Learning outcomes

By the end of the course you will be able to:

- explain sampling, quantization and aliasing, and choose sample rate and bit depth
- analyse a signal with the DFT, STFT and FFT and read a spectrogram
- implement oscillators, envelopes and additive synthesis in Csound and Python
- design filters and use them for subtractive synthesis
- place a sound in the stereo field with linear and constant-power panning

## Units

### 1. Sound and its digital representation (6h)

- Physical characteristics of sound phenomena
- Analog-to-digital (ADC) and digital-to-analog (DAC) conversion
- Sampling, quantization and encoding
- Nyquist-Shannon theorem, sampling rate and Nyquist frequency
- Aliasing and anti-aliasing
- Audio signals as vectors and complex numbers
- **Lab:** set up Csound and Python; generate, sample and quantize signals; listen to aliasing

### 2. The frequency domain (7h)

- Sampling, truncation and discretization of frequencies
- Properties and symmetries of the Fourier Transform (FT)
- Discrete Fourier Transform (DFT) and inverse DFT (IDFT)
- Short-Time Fourier Transform (STFT): analysis window and uncertainty principle
- Danielson-Lanczos lemma and Cooley-Tukey algorithm: the Fast Fourier Transform (FFT)
- Graphic representation of the frequency domain
- **Lab:** a DFT from scratch in Python compared with the FFT; spectrograms of real sounds

### 3. Oscillators, control signals and additive synthesis (7h)

- Table-lookup oscillators and interpolation
- Fixed waveform synthesis with slowly varying amplitude and frequency
- Control signals: envelope generators and low-frequency oscillators (LFO)
- Fourier series and classic waveforms: square, triangle, sawtooth
- Additive synthesis and timbre control: main algorithms, pros and cons
- Using the FT for analysis and resynthesis
- **Lab:** a wavetable oscillator and an additive instrument with envelopes and LFOs in Csound

### 4. Filters and subtractive synthesis (6h)

- What a filter is: linear time-invariant systems, FIR and IIR
- Low-pass, high-pass, band-pass and band-reject filters
- Two-pole and two-zero filters; Butterworth and Chebyshev filters
- Zero-Delay Feedback filters
- Subtractive synthesis and spectrum control
- **Lab:** filters and a subtractive synthesizer in Csound; frequency responses plotted in Python

### 5. Stereo space (4h)

- Fundamentals of spatial hearing: interaural time and level differences
- Coordinate systems for 2D virtual space
- Two-channel panning: linear and constant-power laws
- **Lab:** a panning instrument with automated trajectories

## Assessment

**Exam.** A project chosen from the instructor's proposals ([assignments](../../assignments/sound-processing/index.md)). Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Shannon, C. E.**, Communication in the presence of noise. Proceedings of the IRE, 37(1), 10-21, 1949.
- **Cooley, J. W., & Tukey, J. W.**, An algorithm for the machine calculation of complex Fourier series. Mathematics of computation, 19(90), 297-301, 1965.
- **Savioja, L., Välimäki, V., & Smith III, J. O.**, Real-time additive synthesis with one million sinusoids using a GPU. In Audio Engineering Society Convention 128. Audio Engineering Society 2010.
- **Smith III, J. O.**, Spectral audio signal processing 2011.
- **Moog, R. A.**, Voltage-controlled electronic music modules, Journal of the Audio Engineering Society 13(3): 200–206, 1965.
- **Stilson, T., and J. O. Smith**, Analyzing the Moog VCF with considerations for digital implementation, Proceedings of the International Computer Music Conference, Hong Kong, China, pp. 398–401, 1996.

---

[← Back to Sound Synthesis & Processing](index.md)
