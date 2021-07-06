function penalty = penaltyCalc(game, row, col)

penalty = 0;
% search for duplicate values in row and col
for i = 1:4
    if (game(row, i) == game(row, col)) && (i ~= col)
        penalty = penalty + 1;
    end
    
    if (game(i, col) == game(row, col)) && (i ~= row)
        penalty = penalty + 1;
    end
end


% search section 1
if ((row <= 2) && (col <=2))
    if (game(1,1) == game(row,col)) && (row ~=1 && col~= 1)
        penalty = penalty + 1;
    end
    
    if (game(1,2) == game(row,col)) && (row ~=1 && col~= 2)
        penalty = penalty + 1;
    end
    
    if (game(2,1) == game(row,col)) && (row ~=2 && col~= 1)
        penalty = penalty + 1;
    end
    if (game(2,2) == game(row,col)) && (row ~=2 && col~= 2)
        penalty = penalty + 1;
    end
end

% search section 2
if ((row <=2) && (col==3 || col == 4))
    if ((game(1,3) == game(row,col)) && (row ~=1 && col~= 3))
        penalty = penalty + 1;
    end
    
    if ((game(1,4) == game(row,col)) && (row ~=1 && col~= 4))
        penalty = penalty + 1;
    end
    
    if ((game(2,3) == game(row,col)) && (row ~=2 && col~= 3))
        penalty = penalty + 1;
    end
    if ((game(2,4) == game(row,col)) && (row ~=2 && col~= 4))
        penalty = penalty + 1;
    end
end
%
% search section 3
if ((col <=2) && (row==3 || row == 4))
    if (game(3,1) == game(row,col)) && (row ~=3 && col~= 1)
        penalty = penalty + 1;
    end
    
    if (game(3,2) == game(row,col)) && (row ~=3 && col~= 2)
        penalty = penalty + 1;
    end
    
    if (game(4,1) == game(row,col)) && (row ~=4 && col~= 1)
        penalty = penalty + 1;
    end
    if (game(4,2) == game(row,col)) && (row ~=4 && col~= 2)
        penalty = penalty + 1;
    end
end
%
% % search section 4

if ((row==3 || row == 4) && (col==3 || col == 4))
    if (game(3,3) == game(row,col)) && (row ~=3 && col~= 3)
        penalty = penalty + 1;
    end
    
    if (game(3,4) == game(row,col)) && (row ~=3 && col~= 4)
        penalty = penalty + 1;
    end
    
    if (game(4,3) == game(row,col)) && (row ~=4 && col~= 3)
        penalty = penalty + 1;
    end
    if (game(4,4) == game(row,col)) && (row ~=4 && col~= 4)
        penalty = penalty + 1;
    end
end




