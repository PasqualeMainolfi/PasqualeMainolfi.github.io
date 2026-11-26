---
title: Master 2
parent: Networked Audio
grand_parent: Courses
nav_order: 2
---

# Networked Audio: Master 2

**Focus:** A performance over the internet: designing, building and performing a networked piece with JackTrip and complex routing.

**Path:** **Master 1** audio as data, one-to-one → **Master 2 (this course)** an internet performance, many-to-many

| | |
|:--|:--|
| **Duration** | 30h |
| **Study hours** | 95h |
| **CFA** | 5 |
| **Prerequisites** | Networked Audio, Master 1 |
| **Evaluation** | Eligibility test |

## Learning outcomes

By the end of the course you will be able to:

- design the architecture of a networked performance: sites, roles, topology and latency targets
- set up and tune a JackTrip hub server on a remote machine
- design multichannel routing with separate mixes, saved as reproducible scripts
- synchronize sites with OSC cues and a shared clock
- broadcast the performance to a remote audience
- run soundchecks, handle failures and document the performance

## Units

### 1. Concept and architecture (4h)

- The piece, the sites and the roles
- Topologies: peer-to-peer, hub, mixed
- Latency budget for each site; perceptual thresholds for playing together
- Latency as compositional material: master/slave, delayed feedback, laid-back and other strategies
- **Lab:** architecture document: map of sites, roles and latency targets

### 2. JackTrip in depth (6h)

- Hub server on a remote machine or VPS; patch modes
- Queue, redundancy, buffer size and bit resolution
- NAT, firewalls and UDP ports
- Measuring and tuning a connection
- **Lab:** a working server and a measured, logged connection between at least two sites

### 3. Complex routing (6h)

- JACK graph design and multichannel routing
- Separate mixes: performer monitors, audience, stream
- Csound, Max/MSP or a DAW as JACK clients; BlackHole and Loopback
- Clock drift between sites
- Reproducible setups: connections saved as scripts (jack_connect)
- **Lab:** routing diagram plus a script that rebuilds the whole setup

### 4. Interaction and synchronization (4h)

- OSC between sites: shared cues and clock
- Control and management patches in Csound, Max/MSP or Python
- **Lab:** the network control system of the piece

### 5. Broadcasting to the audience (4h)

- From the final mix to the public: FFmpeg to RTMP, SRT or HLS
- Streaming parameters: codec, bitrate, latency
- **Lab:** a working public stream of the performance

### 6. Rehearsals and performance (6h)

- Soundcheck protocol and checklists
- Fail-safe planning: what to do when a link drops
- Multitrack recording
- Post-mortem with latency logs
- **Lab:** the performance

## Assessment

**Eligibility test.** The project is the networked performance itself, together with a technical dossier: architecture, routing diagram and scripts, latency report. Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Cáceres, J.-P., & Chafe, C.**, JackTrip: Under the Hood of an Engine for Network Audio. Journal of New Music Research, 39(3), 183-187, 2010.
- **Rottondi, C., Chafe, C., Allocchio, C., & Sarti, A.**, An Overview on Networked Music Performance Technologies. IEEE Access, 4, 8823-8843, 2016.
- **Chafe, C., Cáceres, J.-P., & Gurevich, M.**, Effect of temporal separation on synchronization in rhythmic performance. Perception, 39(7), 982-992, 2010.
- **Weinberg, G.**, Interconnected Musical Networks: Toward a Theoretical Framework. Computer Music Journal, 29(2), 23-39, 2005.
- **JackTrip documentation**, <https://jacktrip.github.io/jacktrip/>

---

[← Back to Networked Audio](index.md)
