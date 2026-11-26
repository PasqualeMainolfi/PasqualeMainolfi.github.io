---
title: Networked Audio
parent: Courses
nav_order: 4
has_children: true
has_toc: false
---

# Networked Audio

Official course name: *Audio and Music Information Processing for the Internet and Mobile Communication* (COME/06)
{: .text-grey-dk-000 }

## Course programs

**Path:** audio as data, one-to-one → an internet performance, many-to-many

| Year | Focus |
|:--|:--|
| [Master 1](master-1.md) | Audio as data on the network: latency, codecs, streaming, OSC, first JackTrip session |
| [Master 2](master-2.md) | A performance over the internet: JackTrip, complex routing, broadcast, live performance |

## Course Objectives

The course is about sound travelling over networks: how audio is encoded, packetized, streamed and synchronized between machines, and how to use all of this to make music together at a distance.

The first year (Master 1) builds the foundations on a one-to-one link: networks and latency, codecs and music information, streaming from scratch with sockets, standard protocols with FFmpeg, network control with OSC and a first JackTrip session. The second year (Master 2) applies them to a real project: the class designs, builds and performs a piece over the internet with JackTrip, complex routing and a public broadcast.

Specifically:

- Understand the latency budget of an audio link and measure latency, jitter and packet loss.
- Choose between lossless and perceptual codecs (FLAC, MP3, AAC, Opus) for a given quality, bandwidth and latency.
- Understand audio metadata, content descriptors and audio fingerprinting.
- Build a UDP audio streamer with a jitter buffer from scratch in Python.
- Use streaming protocols (RTP/RTCP, RTMP, SRT, HLS, DASH) and FFmpeg to capture, convert and stream audio.
- Control sound over the network with OSC and sockets in Python, Csound and Max/MSP.
- Use JACK and JackTrip, from a local session to a remote hub server.
- Design and perform a networked music piece: architecture, routing, synchronization, broadcast, fail-safe planning.

## Assessment

Each year of the course ends with a project. Your study plan says whether it counts as an **exam** (graded out of 30) or an **eligibility test** (pass/fail). Each program page says which project applies to that year.

**Which project**

- **Master:** you propose a project on the course topics and agree on it with the instructor in advance.

**Criteria:** originality, depth of analysis, quality of implementation, accuracy of results, and your understanding and application of the theoretical concepts of the course.

**Exam.** You present your project: your work, the methods you used and the results. The committee may ask questions and further clarification, and also considers your ability to explain and defend your work clearly. The final grade is based on the project and the discussion.

**Eligibility test.** The project is evaluated with the same criteria and leads to a judgment of eligibility or non-eligibility.

All tests are conducted rigorously, objectively and impartially, with the sole purpose of evaluating the skills and abilities you have acquired.

## References
- **Kim H. G., Moreau N., Sikora T.**, MPEG-7 Audio and Beyond, Audio content indexing and retrieval, Wiley 2005
- **Watkinson, J.**, The art of digital audio. Taylor & Francis 2001
- **Watkinson, J.**, The art of digital video. Elsevier Inc. 2008
- **Smith, M. D., & Telang, R.**, Streaming, sharing, stealing: Big data and the future of entertainment. Mit Press 2016
- **Korbel, F.**, FFmpeg Basics: Multimedia handling with a fast audio and video encoder. Frantisek Korbel 2012
- **Subhash, V.**, FFmpeg Tips and Tricks. In Quick Start Guide to FFmpeg: Learn to Use the Open Source Multimedia-Processing Tool like a Pro (pp. 165-221). Berkeley, CA: Apress 2023
- **Maia, I.**, Building Web Applications with Flask. Packt Publishing Ltd 2015  
- **Jacktrip**, <https://jacktrip.github.io/jacktrip/>  

## Educational method
The adopted teaching method follows a rigorous structure that includes a theoretical component and a laboratory component. The theoretical part of the lessons is dedicated to a clear and systematic exposition of the fundamental concepts of the subject. Through detailed explanations, relevant examples, and visual illustrations, the aim is to provide students with a deep understanding of the theoretical principles underlying the discipline.  
The laboratory part, on the other hand, constitutes an essential element for consolidating the acquired theoretical knowledge. During these sessions, students have the opportunity to directly apply what they have learned by tackling concrete problems and developing practical skills. Through interactive activities, programming exercises, practical projects, and simulations, students gain familiarity with operational procedures and develop the necessary skills to independently solve problems.  

## Required software

A computer able to run audio and programming software, plus the tools below. Installation instructions are on the [Setup](../../setup.md) page.

- [Homebrew](../../setup.md#homebrew) (macOS)
- [Python with uv](../../setup.md#python-with-uv): packages for *Networked Audio*
- [Code editor](../../setup.md#code-editor): Zed or VS Code
- [Csound](../../setup.md#csound); Max optional
- [FFmpeg, JACK + QjackCtl, JackTrip, BlackHole, Loopback](../../setup.md#course-specific-tools)
