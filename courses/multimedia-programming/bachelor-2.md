---
title: Bachelor 2
parent: Multimedia Programming
grand_parent: Courses
nav_order: 2
---

# Multimedia Programming: Bachelor 2

**Focus:** Connecting systems: making programs, instruments and devices talk to each other through MIDI, OSC and the network.

**Path:** **Bachelor 1** create → **Bachelor 2 (this course)** connect → **Bachelor 3** perceive → **Master 1** sense the body → **Master 2** read the brain

| | |
|:--|:--|
| **Duration** | 25h |
| **Study hours** | 100h |
| **CFA** | 5 |
| **Prerequisites** | Multimedia Programming, Bachelor 1<br>Sound Synthesis & Processing, Bachelor 1 |
| **Evaluation** | Exam |

## Learning outcomes

By the end of the course you will be able to:

- read and generate MIDI messages in Python and Processing
- design client/server and bidirectional systems with OSC over UDP/TCP
- map input data to musical and visual parameters (scaling, smoothing, transformation)
- build and debug a system where Python, Processing and Csound work together

## Units

### 1. MIDI (6h)

- The MIDI protocol: notes, events, channels and messages
- MIDI libraries in Python and Java-Processing
- Control and event generation: integrating virtual instruments and hardware
- **Lab:** a MIDI controller and sequencer in Python or Processing

### 2. Networks and OSC (6h)

- TCP/IP and UDP: a brief overview
- The Open Sound Control (OSC) protocol: clients and servers
- OSC libraries in Python and Java-Processing
- Bidirectional communication systems
- **Lab:** two applications exchanging data over OSC

### 3. Data mapping (5h)

- Extracting, analysing and transforming input data
- Scaling, smoothing and optimizing control data
- Mapping strategies: from input data to sound and image parameters
- **Lab:** mapping a data stream to a sound and a visual parameter

### 4. Integrated systems: Python, Processing, Csound (8h)

- Python in the multimedia context
- Csound for the control and generation of sound events
- MIDI and OSC in Csound
- Troubleshooting and debugging distributed applications
- **Lab:** an interactive multimedia project combining Processing, Python and Csound

## Assessment

**Exam.** A project chosen from the instructor's proposals ([assignments](../../assignments/multimedia-programming/index.md)). Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Wright, M., & Freed, A.**, Open SoundControl: A New Protocol for Communicating with Sound Synthesizers. Proceedings of the International Computer Music Conference, 1997.
- **The MIDI Association**, MIDI 1.0 Detailed Specification.
- **Hunt, A., & Wanderley, M. M.**, Mapping performer parameters to synthesis engines. Organised Sound, 7(2), 97-108, 2002.
- **Lazzarini, V., Yi, S., Heintz, J., Brandtsegg, Ø., & McCurdy, I.**, Csound: A Sound and Music Computing System. Springer 2016.

---

[← Back to Multimedia Programming](index.md)
