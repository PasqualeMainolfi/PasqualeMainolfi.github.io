---
title: Bachelor 2
parent: Sound Synthesis & Processing
grand_parent: Courses
nav_order: 2
---

# Sound Synthesis & Processing: Bachelor 2

**Focus:** Time and nonlinearity: processing sound through time (delays, reverberation), creating spectra with modulation and grains, and spreading sound over N loudspeakers.

**Path:** **Bachelor 1** represent → **Bachelor 2 (this course)** transform → **Bachelor 3** model → **Master 1** search → **Master 2** learn

| | |
|:--|:--|
| **Duration** | 25h |
| **Study hours** | 150h |
| **CFA** | 5 |
| **Prerequisites** | Sound Synthesis & Processing, Bachelor 1 |
| **Evaluation** | Exam |

## Learning outcomes

By the end of the course you will be able to:

- implement delay lines with circular buffers and build delay networks
- design a digital reverberator based on the Schroeder, Chowning and Dattorro models
- use AM, RM, FM, PM and nonlinear distortion, and predict the resulting spectra
- design granular synthesis models and control their parameters
- spatialize sound over N loudspeakers with VBAP and DBAP

## Units

### 1. Delay lines (5h)

- Circular buffer delay lines
- Delay networks: echo, multi-tap and feedback structures
- Comb and allpass filters
- **Lab:** a delay line from scratch in Python and in Csound

### 2. Artificial reverberation (5h)

- Room acoustics essentials: early reflections, late reverberation, T60
- Digital reverberation based on the Schroeder, Chowning and Dattorro models
- **Lab:** a Schroeder reverberator, then a Dattorro plate reverb in Csound and/or Python

### 3. Modulation and nonlinear synthesis (7h)

- From control signals to audio-rate modulation
- Amplitude and ring modulation (AM, RM)
- Frequency and phase modulation (FM, PM): index, C:M ratio, Bessel functions
- Extended FM models: CrossFM (CFM), DoubleFM (DFM), NestedFM (NFM)
- Nonlinear distortion (DNL) and waveshaping with Chebyshev polynomials
- **Lab:** FM/PM instruments and an extended FM model in Csound and Python

### 4. Granular synthesis (5h)

- Gabor's acoustic quanta
- Control parameters of a granular model
- Pitch-synchronous overlapping streams, quasi-synchronous streams, asynchronous clouds
- Sound granulation and synthetic grains
- **Lab:** a granular cloud generator (Csound instrument + Python score)

### 5. N-channel spatialization (3h)

- From stereo to N channels
- VBAP (Vector Base Amplitude Panning)
- DBAP (Distance-Based Amplitude Panning)
- **Lab:** VBAP and DBAP on a loudspeaker ring, with their limits

## Assessment

**Exam.** A project chosen from the instructor's proposals ([assignments](../../assignments/sound-processing/index.md)). Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Pulkki, V.**, Virtual sound source positioning using vector base amplitude panning. Journal of the Audio Engineering Society, 45(6), 456-466, 1997.
- **Lossius, T., Baltazar, P., & de la Hogue, T.**, DBAP–distance-based amplitude panning. In ICMC, 2009.
- **Chowning, J. M.**, The synthesis of complex audio spectra by means of frequency modulation. Journal of the Audio Engineering Society, 21(7), 526-534, 1973.
- **Tan B. T. G., Gan S. L., Lim S. M., Tang S. H.**, Real-Time Implementation of Double Frequency Modulation (DFM) Synthesis. J. Audio Eng. Soc., vol. 42 No. 11 (1994).
- **Horner, A**., Nested Modulator and Feedback FM Matching of Instrument Tones. IEEE Trans. Speech and Audio Processing, pp. 398-409 (1998).
- **Schroeder, M. R.**, Natural sounding artificial reverberation. Journal of the Audio Engineering Society, 10(3), 219-223, 1962.
- **Smith III, J. O.**, Spectral audio signal processing.
- **Dattorro, J.**, Effect design, part 1: Reverberator and other filters. Journal of the Audio Engineering Society, 45(9), 660-684, 1997.
- **Gabor, D.**, Theory of Communication. Journal of the Institution of Electrical Engineers - Part III: Radio and Communication Engineering, Vol. 93, No. 26, pp. 429-457, 1946.
- **Roads, C.**, Introduction to granular synthesis. Computer Music Journal, 12(2), 11-13, 1988.
- **Roads, C.**, Microsound, MIT 2001.
- **Di Scipio, A.**, I quanta acustici di Gabor nelle tecnologie del suono e della musica. Musica/Tecnologia, 17-42, 2016.

---

[← Back to Sound Synthesis & Processing](index.md)
