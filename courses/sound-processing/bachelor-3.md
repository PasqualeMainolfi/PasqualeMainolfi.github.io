---
title: Bachelor 3
parent: Sound Synthesis & Processing
grand_parent: Courses
nav_order: 3
---

# Sound Synthesis & Processing: Bachelor 3

**Focus:** Models of sound: building sound from wavetables, spectra and physical systems instead of single oscillators.

**Path:** **Bachelor 1** represent → **Bachelor 2** transform → **Bachelor 3 (this course)** model → **Master 1** search → **Master 2** learn

| | |
|:--|:--|
| **Duration** | 30h |
| **Study hours** | 150h |
| **CFA** | 5 |
| **Prerequisites** | Sound Synthesis & Processing, Bachelor 2 |
| **Evaluation** | Exam |

## Learning outcomes

By the end of the course you will be able to:

- build wavetable oscillators and morph smoothly between tables
- process sound in the frequency domain and apply convolution with impulse responses
- explain the main physical modeling techniques
- implement and extend the Karplus-Strong algorithm

## Units

### 1. Wavetable synthesis (8h)

- Wavetables and wavetable oscillators for complex sounds
- Band-limited tables and aliasing
- Interpolation techniques for smooth transitions between wavetables
- Parameter control and wavetable manipulation
- **Lab:** a wavetable synthesizer with table morphing

### 2. Spectral processing and convolution (11h)

- Spectral synthesis as an advanced synthesis technique
- Convolution in the time and frequency domains
- Impulse responses and multiplication of sound spectra
- Convolution reverb
- **Lab:** spectral processing in Python; a convolution reverb with measured impulse responses

### 3. Physical modeling (11h)

- Acoustic systems and resonance; mass-spring-damper systems
- Main physical modeling techniques: theory and comparison
- String modeling with the Karplus-Strong algorithm and its extensions
- **Lab:** an extended Karplus-Strong model

## Assessment

**Exam.** A project chosen from the instructor's proposals ([assignments](../../assignments/sound-processing/index.md)). Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Oppenheim A. V., Schafer R. W.**, Discrete-Time Signal Processing, 3rd Edition, Pearson 2010.
- **Smith J. O.**, Mathematics of the Discrete Fourier Transform (DFT) with Audio Application 2nd Edition, 2007.
- **Karplus, K., & Strong, A.**, Digital synthesis of plucked-string and drum timbres. Computer Music Journal, 7(2), 43-55, 1983.
- **Jaffe, D. A., & Smith, J. O.**, Extensions of the Karplus-Strong plucked-string algorithm. Computer Music Journal, 7(2), 56-69, 1983.

---

[← Back to Sound Synthesis & Processing](index.md)
