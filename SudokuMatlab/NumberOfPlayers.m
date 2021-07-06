function [numPlayers, playerIndices] = NumberOfPlayers(starter)

% coordinate way
inds = find(starter==0);
[row, col] = ind2sub(size(starter), inds);
playerIndices = [row, col];
numPlayers = size(playerIndices);
numPlayers = numPlayers(1);
% matrix index way

% playerIndices = find(starter == 0)
% numPlayers = size(playerIndices)