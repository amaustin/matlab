function [finisher, is_solution] = sudokuCBR(starter, p, nmax)


gameCurrent = starter;
gameUpdated = gameCurrent;

% find the number of players and where they are located in the matrix
[numPlayers, playerIndices] = NumberOfPlayers(starter)


for t=1:nmax
    
    
    
    for i = 1:numPlayers
            randValue = rand();
            
            % find playerPosition
            playerPosition = playerIndices(i,:);
            row = playerPosition(1,1);
            col = playerPosition(1,2);
            
            % player chooses a new BR...also account for first time through
            % since the game is initialized with zeros
            if ((randValue < p)  || (t == 1))
             number = BestResponse(gameCurrent, playerPosition);
             gameUpdated(row,col) = number;
            % player plays last value  
            else  
             gameUpdated(row,col) = gameCurrent(row, col);
            end
            
            
                        
    end
    
    % update current game with new values
    gameCurrent = gameUpdated
   
    
end

finisher = gameCurrent;

% call function for checking if solution, NE, or neither

is_solution = gameSolution(finisher, numPlayers, playerIndices);