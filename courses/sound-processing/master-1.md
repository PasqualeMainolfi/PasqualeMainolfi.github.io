---
title: Master 1
parent: Sound Synthesis & Processing
grand_parent: Courses
nav_order: 4
---

# Sound Synthesis & Processing: Master 1

**Focus:** Searching sound spaces: optimization and evolutionary computation to generate sound events and tune synthesis parameters.

**Path:** **Bachelor 1** represent → **Bachelor 2** transform → **Bachelor 3** model → **Master 1 (this course)** search → **Master 2** learn

| | |
|:--|:--|
| **Duration** | 20h |
| **Study hours** | 150h |
| **CFA** | 4 |
| **Prerequisites** | Bachelor Degree<br>An intermediate knowledge of the Python programming language is required, including: understanding of data structures such as lists, tuples, dictionaries, and sets; comprehension of control structures like if-else statements, for and while loops; ability to handle file input/output (I/O); string manipulation skills; implementation of lambda functions; and understanding of object-oriented programming concepts such as class creation, inheritance, encapsulation, and polymorphism. Additionally, an intermediate knowledge of the CSound programming language for sound synthesis is required, including familiarity with key audio programming elements: advanced syntax, structures for event control and generation, integration with other tools, utilization of MIDI and OSC protocols, and optimization practices. Regarding academic background, a strong understanding of mathematical and physics principles covered in a high school curriculum, such as algebra, geometry, and trigonometry, is necessary. |
| **Evaluation** | Eligibility test |

## Learning outcomes

By the end of the course you will be able to:

- formulate a sound design task as an optimization problem with a search space and an objective
- compare genetic algorithms, particle swarm optimization and ant colony optimization
- design a fitness function and evaluate its effect on the results
- use evolutionary algorithms to match a target sound or generate sound events

## Units

### 1. Optimization and search spaces (3h)

- What optimization is: problems, search spaces, objective functions
- Machine learning and evolutionary algorithms (EA): where they meet
- **Lab:** explore the parameter space of a simple synthesis model

### 2. Evolutionary algorithms: an overview (3h)

- Genetic algorithms (GA), Particle Swarm Optimization (PSO), Ant Colony Optimization (ACO): overview and differences
- **Lab:** the same toy problem solved by random search and by a minimal GA

### 3. Genetic algorithms (6h)

- Representation, selection, crossover and mutation
- The importance of the fitness function
- Generating sound events and optimizing synthesis parameters with GAs: successes and failures
- **Lab:** a GA in Python driving Csound

### 4. Particle Swarm Optimization (4h)

- Initialization, updating particle positions and velocities
- Matching synthesis with PSO
- **Lab:** PSO matching a target sound with an FM or additive model

### 5. Ant Colony Optimization (4h)

- Pheromones and trail updating
- Optimizing and generating synthesis parameters with ACO
- **Lab:** ACO for parameter or sequence generation

## Assessment

**Eligibility test.** A project on the course topics, agreed with the instructor in advance. Rules and criteria: see [Assessment](index.md#assessment) on the course page.

## Suggested readings

- **Holland, J. H.**, Adaptation in natural and artificial systems: an introductory analysis with applications to biology, control, and artificial intelligence. MIT press 1992.
- **Eiben, A. E., & Smith, J. E.**, Introduction to evolutionary computing. Springer-Verlag Berlin Heidelberg 2015.
- **Whitley, D.**, A genetic algorithm tutorial. Statistics and computing, 4, 65-85, 1994.
- **Beauchamp, J., Horner, A., Haken, L.**, Machine Tongues XVI: Genetic Algorithms and Their Application to FM Matching Synthesis. Computer Music Journal (1993).
- **Kennedy J., Eberhart R.**, Particle Swarm Optimization. Proceedings of IEEE International Conference on Neural Network, vol. IV pp. 1942-1948 (1995).
- **Dorigo, M., Maniezzo, V., & Colorni, A.**, The Ant System: Optimization by a colony of cooperating agents. IEEE Trans. System, Man & Cybernetics-Part B, 26(1), 1-13, 1996.
- **Dorigo, M., & Blum, C.**, Ant colony optimization theory: A survey. Theoretical computer science, 344(2-3), 243-278, 2005.
- **Loughran, R., & O’Neill, M.**, Evolutionary music: applying evolutionary computation to the art of creating music. Genetic Programming and Evolvable Machines, 21, 55-85, 2020.
- **Nao Tokui and Hitoshi Iba**, Generation of musical rhythms with interactive evolutionary computation, In Proceedings of the 14th Annual Conference of JSAI (in Japanese), 2000.
- **John A. Biles, GenJam**, A Genetic Algorithm for Generating Jazz Solos, In Proceedings of the 1994 International Computer Music Conference, ICMC, 1994.
- **Burton, Anthony R., and Tanya Vladimirova**, Generation of musical sequences with genetic techniques. Computer Music Journal 23(4):59–73, 1999.
- **Brad Johanson and Riccardo Poli**, GP-Music: An Interactive Genetic Programming System, In Proceedings of the Third Annual Conference: Genetic Programming 1998, 1998.

---

[← Back to Sound Synthesis & Processing](index.md)
