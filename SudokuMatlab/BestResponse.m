function number = BestResponse(game, playerPosition)

% playerPosition given in row and column (1x2 matrix)

row = playerPosition(1,1);
col = playerPosition(1,2);
number = 0;
% need section function


% remember the number that gives the highest penalty
%
% if I want to put 1...2..3...or 4 in playerposition 
% or stay the same

% currently configured for stay the same

% do a game check with 1, 2, 3 and 4
% duplicated game with those values inserted.
game1 = game;
game2 = game;
game3 = game;
game4 = game;

game1(row, col) = 1;
game2(row, col) = 2;
game3(row, col) = 3;
game4(row, col) = 4;

% check these games for penalties
% and choose the best response number from the one with the lowest penalty


% intitialize gamePenalty
gamePenalty = zeros(1, 4);


gamePenalty(1, 1) = penaltyCalc(game1, row, col);

gamePenalty(1, 2) = penaltyCalc(game2, row, col);

gamePenalty(1, 3) = penaltyCalc(game3, row, col);

gamePenalty(1, 4) = penaltyCalc(game4, row, col);

% get the index of the minimum values
I = find(gamePenalty == min(gamePenalty));

% compare that index with the current value to choose BR

for k = 1:length(I)
 if I(k) == game(row, col)
     number = game(row,col);
 end
    
end

% if no value has been assigned to number
if number == 0
    number = I(1);
end




