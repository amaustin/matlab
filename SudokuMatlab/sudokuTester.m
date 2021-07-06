% Sudoku Game Tests

clc
clear


%%%%%%%%%%%%%%% Inputs %%%%%%%%%%%%%%%%%%%%

% starting puzzle
% '0' indicates free agent
starter = [0 1 0 0 ; 0 2 0 0 ; 2 0 0 0 ; 0 0 3 0]

% inertial probability
p = .5

% number of iterations to allow
nmax = 20

[finisher, is_solution] = sudokuCBR(starter, p, nmax)