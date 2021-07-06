function is_solution = gameSolution(finisher, numPlayers, playerIndices)


% solutionArray

solutionArray = zeros(1,12);

for i = 1:numPlayers
    
    % find playerPosition
    playerPosition = playerIndices(i,:);
    row = playerPosition(1,1);
    col = playerPosition(1,2);
    
    
    % check if player can make a move or if all penalties are equal
    % and has no reason to move
    % 1. check if this value is a best response
    % 2. check if this best response results in a penalty
    % if a penalty, not a solution, but it is a NE
    % if all players are at BR but not a solution then NE
    
    
    BR  = BestResponse(finisher, playerPosition);
    
    % check if the current value matches BR
    if (BR == finisher(row, col))
        % check for penalties
        penalty = penaltyCalc(finisher, row, col);
        if (penalty == 0)
            solutionArray(i) = 1;
        else
            
            solutionArray(i) = 0;
            
        end
        
    else
        solutionArray(i) = -1;
        
    end
    
    
end


% comparison check of solution array
% if all 1's then solution and NE
% if all 0's or mix of 1's and 0's then NE
% if any -1's then not a solution or NE
check_sol = find(solutionArray == 1)
check_NE  = find(solutionArray == 0)
check_neither = find(solutionArray == -1)


% if there are ones
if isempty(check_sol) ~= 1
    % get how many ones
    numberOfOnes = length(check_sol);
    % compare with the number of players
    if numberOfOnes == 12
        is_solution = 1;
    end
end

if isempty(check_NE) ~= 1
    % get how many 0's
    numberOfZeros = length(check_NE);
    numberofOnesAndZeros = numberOfOnes + numberOfZeros;
    if (numberOfZeros == 12) || (numberofOnesAndZeros == 12)
        is_solution = 0;
    end
    
end

if isempty(check_neither) ~= 1
    is_solution = -1;
end
