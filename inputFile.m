function [nameFile] = inputFile(topologyFile);

PL_D0 = 55.0;
D0 = 1.0;
OUTPUT_POWER = -7.0;
NOISE_FLOOR = -105.0;
ASYMMETRY = 1;
COVM = [3.7 -3.3; -3.3 6.0];

PATH_LOSS_EXPONENT = 7;
SHADOWING_STANDARD_DEVIATION = 10;

MODULATION = 3;
ENCODING = 3;
PREAMBLE_LENGTH = 3;
FRAME_LENGTH = 50;

TOPOLOGY = 1;
GRID_UNIT = 3;
NUMBER_OF_NODES = 25;
TERRAIN_DIMENSIONS_X = 25;
TERRAIN_DIMENSIONS_Y = 25;
NUMBER_OF_ITERATIONS = 100;
TEMPORAL_CORRELATION_COEFFICIENT = 5.000000e-01;
SPATIAL_CORRELATION_COEFFICIENT = 5.000000e-01;

save nameFile;
nameFile = 'nameFile';