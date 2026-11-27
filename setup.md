---
title: Setup
nav_order: 2.5
---

# Workspace setup

Everything you need to work in class, installed once. Each [course page](courses/index.md) lists which of these tools it uses.

The commands below are for **macOS**. On Windows and Linux, use the download links next to each tool.

## Quick start (macOS)

1. Install [Homebrew](#homebrew).
2. Install the core tools with one command:

   ```sh
   brew install uv csound portaudio
   brew install --cask zed processing
   ```

   (Prefer VS Code? Replace `zed` with `visual-studio-code`.)
3. Create your [Python project](#python-with-uv) for the course.
4. Install the [course-specific tools](#course-specific-tools), if your course needs them.

## Homebrew {#homebrew}

Homebrew is the package manager for macOS: it installs and updates all the other tools from the terminal. Open the Terminal app and paste:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

At the end, follow the instructions printed in the terminal (*Next steps*) to add `brew` to your PATH. Check with `brew --version`.

More info: <https://brew.sh>

## Python with uv {#python-with-uv}

We use [uv](https://docs.astral.sh/uv/) to manage Python: it installs Python itself, creates an isolated environment for each project and installs packages. You don't need to install Python separately, nor conda or pip.

**Install**

```sh
brew install uv
```

Windows: `powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"`  
Linux: `curl -LsSf https://astral.sh/uv/install.sh | sh`

**Create one project per course**

```sh
uv init my-course        # creates the folder with a Python project inside
cd my-course
uv add numpy matplotlib  # adds packages to the project
uv run main.py           # runs a script inside the project environment
```

Packages used in each course:

| Course | Packages |
|:-------|:---------|
| Sound Synthesis & Processing | `uv add numpy scipy matplotlib librosa soundfile sounddevice pyaudio ctcsound` |
| Sound Synthesis & Processing, Master 2 | add `tensorflow scikit-learn h5py` |
| Multimedia Programming | `uv add numpy mido python-rtmidi python-osc opencv-python mediapipe` |
| Networked Audio | `uv add numpy pyaudio python-osc` |

Notes:

- `pyaudio` needs PortAudio: `brew install portaudio` before `uv add pyaudio`.
- `ctcsound` (Python ↔ Csound) needs [Csound](#csound) installed.
- If a package refuses to install on the latest Python (this sometimes happens with `tensorflow` and `mediapipe`), pin an older version and retry: `uv python pin 3.12`.
- Notebooks (`.ipynb`): open them directly in VS Code, or run `uv add jupyterlab` and then `uv run jupyter lab`.
- Projects in the [`scripts/` folder](https://github.com/PasqualeMainolfi/PasqualeMainolfi.github.io/tree/main/scripts) that contain a `pyproject.toml` are already uv projects: `cd` into the folder and run `uv sync`.

## Code editor: Zed or VS Code {#code-editor}

Use one of the two.

| | Zed | VS Code |
|:--|:--|:--|
| Install (macOS) | `brew install --cask zed` | `brew install --cask visual-studio-code` |
| Download | <https://zed.dev> | <https://code.visualstudio.com> |
| Python | built in | install the **Python** extension |
| Csound | install the **Csound** extension (Extensions panel) | install the **Csound** extension (Extensions panel) |

## Csound {#csound}

Csound is the sound programming language we use for synthesis and processing.

```sh
brew install csound
csound --version   # check the installation
```

Windows and Linux: <https://csound.com/download.html>

**CsoundQt (optional).** A dedicated Csound editor with widgets and an integrated help. Download it from <https://github.com/CsoundQt/CsoundQt/releases>. You can work perfectly well from Zed or VS Code instead.

## Processing {#processing}

Processing is used for creative coding (Multimedia Programming). It already includes Java: you don't need to install it separately.

```sh
brew install --cask processing
```

Download for every system: <https://processing.org/download>

Libraries (e.g. **Sound**, **oscP5**, **The MidiBus**): in Processing, *Sketch → Import Library → Manage Libraries…*

**p5.js.** Nothing to install: use the online editor at <https://editor.p5js.org>.

## Course-specific tools {#course-specific-tools}

Install these only if your course uses them (see the course page).

| Tool | What for | Install |
|:-----|:---------|:--------|
| FFmpeg | converting, encoding and streaming audio and video | `brew install ffmpeg` |
| BlackHole | virtual audio cable between applications (macOS) | `brew install --cask blackhole-2ch` (or `blackhole-16ch`) |
| Loopback | advanced audio routing between applications (macOS, paid) | <https://rogueamoeba.com/loopback/> |
| JACK + QjackCtl | low-latency audio server and its control panel | `brew install jack qjackctl` |
| JackTrip | audio over the network | <https://jacktrip.github.io/jacktrip/> |
| Max | visual programming (Networked Audio, optional) | <https://cycling74.com/downloads> |
| Sonic Visualiser | viewing and analysing audio files | <https://www.sonicvisualiser.org> |
| Cabbage | audio plugins and GUIs with Csound (optional) | <https://cabbageaudio.com> |
| Arduino IDE | sensors and microcontrollers (Multimedia Programming, Master 1) | `brew install --cask arduino-ide` |
| Emotiv software | EEG headset (Multimedia Programming, Master 2) | <https://www.emotiv.com> |

## Check everything works

```sh
brew --version
uv --version
csound --version
```

Then open your editor, create a project with `uv init`, and run a first script with `uv run`. If something fails, bring the error message to class or send it to me.
