SetFactory("OpenCASCADE");

h =0.5;
Mesh.CharacteristicLengthMin = h;
Mesh.CharacteristicLengthMax = h;//0.5;

//Mesh.MeshSizeFromCurvature=10;
//RefineMesh;

//Main Part
Cone(1)={0,0,0,0,0,1.8,7.85,8.138};

Cylinder(2) = {0,0,1.8,0,0,1.043,7.15};
Coherence;
BooleanFragments{Volume{2}; Delete;}{Volume{1}; Delete;}

Cone(3) = {0,0,2,0,0,1.043,0,7.15};
BooleanDifference{Volume{2}; Delete;}{Volume{3}; Delete;}

//Pipes
Cylinder(3) = {5.55,0,1.8,0,0,25.450,1};
Cylinder(4) = {-5.55,0,1.8,0,0,25.450,1};

BooleanUnion(5) = {Volume{2}; Delete;}{Volume{3,4}; Delete;};
//Coherence; //for conformity
/*

Fillet {5}{17,13,18}{0.1}
Fillet {2}{23,14,12,19}{0.1}
*/

//Tips
Cone(3) = {5.55,0,27.25,0,0,4,1,0.75};
Cone(4) = {-5.55,0,27.25,0,0,4,1,0.75};

BooleanUnion{ Volume{5}; Delete; }{ Volume{3,4}; Delete; }

Coherence; //for conformity

/*
//For Scaffold:

Delete{Volume{2};}
Delete{Surface{10:26};}
Delete{Curve{10:51};}
Delete{Point{7:31};}
*/
Physical Surface("Top", 5000) = {6};
Physical Surface("Walls",8000)={7,8,9};


//Mesh.OptimizeThreshold()
//For Flow Domain:
Physical Surface("entree", 2000) = {17};
Physical Surface("sortie", 1000) = {18};
Physical Surface("Wall", 3000) = {7:24};
Physical Surface("Bottom", 4000) = {6};
