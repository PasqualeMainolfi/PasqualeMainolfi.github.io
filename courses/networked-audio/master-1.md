---
title: Master 1
parent: Networked Audio
grand_parent: Courses
nav_order: 1
---

# Networked Audio: Master 1

**Focus:** Audio as data on the network: how sound is encoded, packetized and streamed between two machines.

**Path:** **Master 1 (this course)** audio as data, one-to-one → **Master 2** an internet performance, many-to-many

| | |
|:--|:--|
| **Duration** | 30h |
| **Study hours** | 120h |
| **CFA** | 6 |
| **Prerequisites** | Bachelor Degree<br>Intermediate knowledge of the Python programming language is required, including: knowledge of data structures like lists, tuples, dictionaries, and sets; understanding of control structures like if-else statements, for and while loops; ability to handle input/output operations for file handling (I/O); string manipulation skills; implementation of lambda functions; comprehension of object-oriented programming concepts such as class creation, inheritance, encapsulation, and polymorphism. Additionally, a basic understanding of concepts related to audio and video formats is required, including a grasp of the fundamental principles of audio and video compression. |
| **Evaluation** | Eligibility test |

## Learning outcomes

By the end of the course you will be able to:

- measure latency, jitter and packet loss and explain the latency budget of an audio link
- choose a codec (lossless or perceptual) for a given quality, bandwidth and latency
- build a UDP audio streamer with a jitter buffer from scratch in Python
- stream audio with standard protocols using FFmpeg and compare their latency
- control sound remotely with OSC and run a first JackTrip session on a local network

## Units

### 1. Networks for musicians (5h)

- IP addresses, ports, TCP vs UDP
- The latency budget: audio buffers, encoding, network, jitter buffer, decoding
- Jitter, packet loss and bandwidth
- **Lab:** measure round-trip time and jitter between two machines (ping, iperf3, Wireshark)

### 2. Audio data, codecs and music information (7h)

- PCM audio and bitrate
- Lossless (FLAC) and perceptual (MP3, AAC, Opus) compression: principles and codec latency
- Containers; video codecs (H.264, H.265) in brief
- Music information: metadata, MPEG-7 descriptors, audio fingerprinting
- **Lab:** compare codecs with FFmpeg (size, spectrogram, listening); identify songs with a fingerprinting script

### 3. Streaming from scratch (6h)

- Sockets in Python
- Packetization, sequence numbers and timestamps
- Jitter buffer and handling of lost packets
- **Lab:** a minimal RTP-like audio streamer between two computers

### 4. Streaming protocols and FFmpeg (6h)

- RTP/RTCP and SDP; RTMP and SRT; HLS and DASH
- Latency vs robustness: live and on-demand streaming
- FFmpeg: capture, conversion, encoding and streaming; conversion scripts
- **Lab:** the same signal over raw UDP, RTP and HLS, with measured latency

### 5. Network control and first JackTrip session (6h)

- OSC and sockets in Csound and Max/MSP (socksend/sockrecv) and Python
- The smartphone as a network controller
- JACK and QjackCtl on a local machine
- JackTrip on a local network: P2P and hub modes
- **Lab:** a networked instrument played from two computers; a JackTrip session on the local network

## Assessment

**Eligibility test.** A project on the course topics, agreed with the instructor in advance. Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Kurose, J. F., & Ross, K. W.**, Computer Networking: A Top-Down Approach, 8th edition. Pearson 2021.
- **Schulzrinne, H., Casner, S., Frederick, R., & Jacobson, V.**, RFC 3550: RTP: A Transport Protocol for Real-Time Applications. IETF 2003.
- **Valin, J.-M., Vos, K., & Terriberry, T.**, RFC 6716: Definition of the Opus Audio Codec. IETF 2012.
- **Watkinson, J.**, The Art of Digital Audio. Taylor & Francis 2001.
- **Kim, H. G., Moreau, N., & Sikora, T.**, MPEG-7 Audio and Beyond: Audio Content Indexing and Retrieval. Wiley 2005.
- **Wang, A.**, An Industrial-Strength Audio Search Algorithm. Proceedings of ISMIR, 2003.
- **Korbel, F.**, FFmpeg Basics: Multimedia handling with a fast audio and video encoder. 2012.
- **Subhash, V.**, Quick Start Guide to FFmpeg. Apress 2023.

---

[← Back to Networked Audio](index.md)
