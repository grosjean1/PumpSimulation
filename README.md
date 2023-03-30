# PumpSimulation
Pump- alternating flow in a perfusion chamber



Pump simulation - bioreactor for cell culture stress: 
stokes--Biot-darcy coupling. Nitsche's method as in "Partitioning strategies for the interaction of a fluid with a poroelastic material based on a Nitsche’s coupling approach".

2D:
- 2d Validation example as in "Simulation of flow in fractured poroelastic media: a comparison of different discretization approaches" (I. Ambartsumyan, E. Khattatov, I. Yotov1, and P. Zunino) in "test2dseqstationnaire.edp"
- 2D fracture test inside poroelastic domain

3D:
- 3D loosely coupled scheme : coupled2.edp
- 3D monolithic scheme : Monolithic.edp
- 3D monolithic parallel version: PETScversion.edp (with the command line: ff-mpirun -np 8 PETScversion.edp -v 0) for 8 procs



.geo : meshes with gmsh
.mesh : saved meshes for FreeFem++ 3D scripts

