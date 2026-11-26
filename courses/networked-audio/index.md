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

## Required Software and Tools
To participate in this course, in addition to a personal computer with sufficient processing power and memory to run programming software, you will need the following tools:  

- Programming Languages
  - [Python](#python)

- Virtual Enviroment Manager
  - [Conda](#conda)

- Package Manager (MacOS)
  - [Homebrew](#homebrew-only-for-macos)

- Source Code Editor and IDE
  - [Visual Studio Code](#source-code-editor-and-ide)
  - [PyCharm](#source-code-editor-and-ide)

- Software
  - [FFmpeg](#ffmpeg)
  - [BlackHole](#blackhole-only-for-macos) (MacOS)
  - [JackAudioConnectionKit](#jack-audio-connection-kit)
  - [Jacktrip](#jacktrip)
  - [Loopback](#loopback) (MacOs)

## Getting Started
### Homebrew (only for MacOS)
---
What is Homebrew? Homebrew is a package manager for macOS that allows you to easily install, update, and manage software packages and dependencies. It provides a convenient way to install command-line tools, libraries, and applications on your macOS system. With Homebrew, you can quickly install software packages that are not included in the default macOS installation, keeping your system clean and organized. It also helps manage dependencies between different software packages, ensuring that they work together seamlessly.

...if you have MacOS, first install *Homebrew* (<https://brew.sh/index_it>)

1. Open the terminal
2. Paste the following command and press <Enter>:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Conda
---
What is a Virtual Environment Manager? A virtual environment manager, like Conda, helps you create isolated environments with specific software versions and dependencies. This ensures that your course projects and assignments run consistently and independently of your system's global software configurations.

By using Conda, you can create a dedicated environment for the "Course Name" course, install the required packages, and manage their versions separately from other projects or courses you may be working on.

If you're new to Conda, here's a quick guide to get started:

1. Install Conda
    - by following the official documentation for your operating system: <https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html#>.
    - or, open the terminal and install conda via brew:  

    ```shell
    brew install --cask miniconda
    ```

2. Create a new Conda environment for the "Course Name" course

```shell
conda activate
conda create -n [env_name] python=<VERSION.X>
```

3. Activate the created environment to start working on the course materials: `conda activate course-environment`.
4. Install additional course-specific packages and dependencies.

```shell
conda activate [env_name]
pip install numpy ffmpeg flask
```  

On MacOS you may need to install:  

```shell
brew install pkg-config
brew install portmidi
brew install portaudio
...
```

### FFmpeg
---
FFmpeg is a comprehensive, open-source software suite that provides a library of multimedia handling functions and a command-line toolset for audio and video processing. It offers a wide range of capabilities for capturing, converting, streaming, and manipulating audio and video streams. With FFmpeg, developers have access to a powerful set of tools and libraries that enable them to perform various multimedia tasks efficiently and effectively.  
The FFmpeg library supports a vast array of audio and video formats, codecs, and protocols, making it a versatile solution for handling media in different applications and platforms. It allows users to decode, encode, transcode, and mux/demux audio and video streams, as well as perform tasks like format conversion, resizing, filtering, and frame extraction.  
FFmpeg's command-line toolset provides a user-friendly interface for executing complex multimedia operations with precise control over various parameters and options. It allows users to perform batch processing, apply filters and effects, adjust audio and video quality, and configure streaming settings.  

You can download and install `ffmpeg` from <https://ffmpeg.org/>  
or via `brew` (only on MacOS)  

```shell
brew update
brew install ffmpeg
```  

check if the installation was succesful by running in the terminal:  

```shell
ffmpeg
```  

This command will display the version information of `ffmpeg` installed on your system.

### Python
---  
Python is a versatile and popular programming language known for its simplicity and readability. It was created by Guido van Rossum and first released in 1991. Python emphasizes code readability and offers a clean and easy-to-understand syntax, making it an excellent choice for beginners and experienced programmers alike. Python is a high-level language, which means it provides abstractions that simplify the process of developing applications. It has a vast standard library and a thriving ecosystem of third-party packages, making it suitable for a wide range of applications, including web development, data analysis, machine learning, artificial intelligence, scientific computing, and more.  
We will install Python in the virtual environment created via Conda.  

```shell
conda activate
conda create -n [env_name] python=<VERSION.X>
conda activate [env_name]
pip install numpy ffmpeg flask
```

However, it is also possible to install Python on the main system

- from the webpage <https://www.python.org/>
- via `brew` (on MacOS)  

  ```shell
  brew update
  brew install python@<VERSION.X>
  ```  

  check your installation by running  

  ```shell
  python -version
  ```

### Source Code Editor and IDE
---

1. Visual Studio Code, commonly referred to as VS Code, is a lightweight yet powerful source code editor developed by Microsoft. It is designed to provide a modern and customizable environment for coding, debugging, and collaboration.  
   Install VS Code from <https://code.visualstudio.com/>  
   or, on MacOS, via `brew` by running the following command:

   ```sh
   brew update
   brew install --cask visual-studio-code
   ```

   To adapt VS Code to our work, open the editor and install the following exentions:  
   - Python  
   - Pylance
   - Markdown All in One
   - Intellicode  

2. Install PyCharm and IntelliJ from <https://www.jetbrains.com/>  
   PyCharm is specifically designed for Python development, providing a comprehensive set of tools and features tailored to Python programmers. It offers intelligent code completion, code inspections, and quick fixes to help you write clean and efficient Python code. PyCharm also includes advanced debugging capabilities, integrated version control, and support for popular Python frameworks and libraries.
   IntelliJ IDEA, on the other hand, is a general-purpose IDE that supports multiple programming languages, including Java, Kotlin, JavaScript, and more. It provides a wide range of features for efficient coding, such as smart code completion, refactoring tools, and powerful debugging capabilities. IntelliJ IDEA is known for its excellent support for Java development, including frameworks like Spring, and it offers a rich ecosystem of plugins and extensions.

### BlackHole (Only for MacOs)
---

BlackHole is a modern macOS virtual audio loopback driver that allows applications to pass audio to other applications with zero additional latency.  
Install BlackHole 16ch from: <https://github.com/ExistentialAudio/BlackHole>  
or via brew:  

```sh
brew install blackhole-16ch
```  

### Jack Audio Connection Kit
---  

JACK Audio Connection Kit (or JACK) is a professional sound server API and pair of daemon implementations to provide real-time, low-latency connections for both audio and MIDI data between applications.  
Install from: <https://jackaudio.org/>  

or via brew (for MacOs)

```sh
brew install jack
```  

now, install QjackCtl, a simple GUI dialog for setting several JACK server parameters, which are properly saved between sessions, and a way control of the status of the audio server. With time, this primordial interface has become richer by including a enhanced patchbay and connection control features.  
Install QjackCtl from <https://qjackctl.sourceforge.io/>

### Jacktrip
---

JackTrip is a Linux, macOS, or Windows multi-machine audio system used for network music performance over the Internet. It supports any number of channels (as many as the computer/network can handle) of bidirectional, high quality, uncompressed audio signal streaming. You can use it between any combination of machines e.g., one end using Linux can connect to another using macOS.  
Install from: <https://jacktrip.github.io/jacktrip/Install/>  

### Loopback
---

Loopback is a macOS application developed by Rogue Amoeba Software that allows you to manage audio from various sources and route sound between applications and audio devices.  
This application is highly useful for creating custom audio configurations on a Mac and for flexible audio source management.  
Install from: <https://rogueamoeba.com/loopback/>  
