---
title: Master 2
parent: Sound Synthesis & Processing
grand_parent: Courses
nav_order: 5
---

# Sound Synthesis & Processing: Master 2

**Focus:** Learning from sound: neural networks for audio analysis, classification and generation.

**Path:** **Bachelor 1** represent → **Bachelor 2** transform → **Bachelor 3** model → **Master 1** search → **Master 2 (this course)** learn

| | |
|:--|:--|
| **Duration** | 30h |
| **Study hours** | 150h |
| **CFA** | 4 |
| **Prerequisites** | Sound Synthesis & Processing, Master 1 |
| **Evaluation** | Exam |

## Learning outcomes

By the end of the course you will be able to:

- explain how a neural network learns, from the artificial neuron to backpropagation
- prepare an audio dataset: features, normalization, training and test splits
- build, train and evaluate an audio classifier in TensorFlow/Keras
- describe the main neural approaches to audio synthesis and transcription

## Units

### 1. From optimization to learning (2h)

- Machine learning and neural networks
- Training as optimization: link with Master 1
- **Lab:** gradient descent on a toy problem

### 2. Neural network fundamentals (9h)

- Artificial neurons and activation functions
- Network architectures and types of neural networks
- The backpropagation algorithm
- Validation and testing; accuracy and error measures
- Optimization of network parameters
- **Lab:** a small network from scratch in Python

### 3. Audio data for neural networks (6h)

- Preparing audio datasets
- Audio features in the time and frequency domains
- Normalization and standardization of audio data
- **Lab:** a feature-extraction pipeline for a sound dataset

### 4. Audio classification with TensorFlow (7h)

- Tools and frameworks for neural networks in Python; TensorFlow/Keras
- Audio analysis and classification with neural networks
- **Lab:** design an audio classifier and train it on a sampled sound dataset

### 5. Neural audio synthesis: an overview (6h)

- Autoregressive models (WaveNet), autoencoders, generative adversarial networks
- Neural transcription and onset detection
- **Lab:** experiments with a pretrained generative model

## Assessment

**Exam.** A project on the course topics, agreed with the instructor in advance. Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **McCulloch, W. S., & Pitts, W.**, A logical calculus of the ideas immanent in nervous activity. The bulletin of mathematical biophysics, 5, 115-133, 1943.
- **Todd, P.**, A sequential network design for musical applications. In Proceedings of the 1988 connectionist models summer school (pp. 76-84), 1988.
- **Donahue, C., McAuley, J., & Puckette, M.**, Synthesizing audio with generative adversarial networks. arXiv preprint arXiv:1802.04208, 1, 2018.
- **Engel, J., Resnick, C., Roberts, A., Dieleman, S., Norouzi, M., Eck, D., & Simonyan, K.**, Neural audio synthesis of musical notes with wavenet autoencoders. In International Conference on Machine Learning (pp. 1068-1077). PMLR 2017.
- **Ning, Y., He, S., Wu, Z., Xing, C., & Zhang, L. J.**, A review of deep learning based speech synthesis. Applied Sciences, 9(19), 4050, 2019.
- **Hawthorne, C., Elsen, E., Song, J., Roberts, A., Simon, I., Raffel, C., ... & Eck, D.**, Onsets and frames: Dual-objective piano transcription. arXiv preprint arXiv:1710.11153, 2017.
- **Sang, J., Park, S., & Lee, J.**, Convolutional recurrent neural networks for urban sound classification using raw waveforms. In 2018 26th European Signal Processing Conference (EUSIPCO) (pp. 2444-2448). IEEE 2018.
- **Eck, D., & Schmidhuber, J.**, Finding temporal structure in music: Blues improvisation with LSTM recurrent networks. In Proceedings of the 12th IEEE workshop on neural networks for signal processing (pp. 747-756). IEEE 2002.
- **Marolt, M., Kavcic, A., & Privosnik, M.**, Neural networks for note onset detection in piano music. In Proceedings of the 2002 International Computer Music Conference 2002.
- **Oord, A. V. D., Dieleman, S., Zen, H., Simonyan, K., Vinyals, O., Graves, A., ... & Kavukcuoglu, K.**, Wavenet: A generative model for raw audio. arXiv preprint arXiv:1609.03499, 2016.

---

[← Back to Sound Synthesis & Processing](index.md)
