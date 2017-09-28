% Tic Tac Toe Assignment
% Author: Stuart Nezlek
%Due Date : September 27;
% This Code will allow you to generate and run a game of Tic Tac Toe while
% playing against a computer. Ideally, the computer wil never lose and you
% two will come to a draw for every game played.

  % Step 1. welcome and user input
  
  fprintf ('Welcome to Tic-Tac-Toe!\n')
  noHumans = input(' Enter the number of human players: '); % Pick 1
   
  % Step 2. Board Setup
  fprintf ('The board will come up as a 3x3 matrix numbered 11-19\n')
Board = [11 14 17; 12 15 18; 13 16 19]

% Step 3. Computer Goes 1st
CPUChoices = find(Board >= 11);
CPUMove1 = datasample(CPUChoices,1);
switch (CPUMove1)
    case 1
        Board (1,1) = 0;
    case 2
        Board (2,1) = 0;
    case 3
        Board (3,1) = 0;
    case 4
        Board (1,2) = 0;
    case 5
        Board (2,2) = 0;
    case 6
        Board (3,2) = 0;
    case 7
        Board (1,3) = 0;
    case 8
        Board (2,3) = 0;
    case 9
        Board (3,3) = 0;
end

Board

  if Board(1,1) + Board(1,2) + Board(1,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (2,1) + Board(2,2) + Board (2,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
  end


% Step 4. Human Player goes 
X = input (' Human Player, make your move. Pick an untaken spot on the board 1-9: ');
 switch (X)
    case 1
        Board(1,1) = 1 ;
     case 2
        Board (2,1) = 1;
    case 3
        Board (3,1) = 1;
    case 4
        Board (1,2) = 1;
    case 5
        Board (2,2) = 1;
    case 6
        Board (3,2) = 1;
    case 7 
        Board (1,3) = 1;
    case 8
        Board (2,3) = 1;
    case 9
        Board (3,3) = 1;
 end
    
Board

if Board(1,1) + Board(1,2) + Board(1,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return 
elseif Board (2,1) + Board(2,2) + Board (2,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
end

  
% Step 4. Computer Goes for 2nd move
CPUChoices = find(Board >= 11)
CPUMove2 = CPUChoices (randperm(length(CPUChoices),1))
switch (CPUMove2)
    case 1
        Board (1,1) = 0;
    case 2
        Board (2,1) = 0;
    case 3
        Board (3,1) = 0;
    case 4
        Board (1,2) = 0;
    case 5
        Board (2,2) = 0;
    case 6
        Board (3,2) = 0;
    case 7
        Board (1,3) = 0;
    case 8
        Board (2,3) = 0;
    case 9
        Board (3,3) = 0;
end

Board

 if Board(1,1) + Board(1,2) + Board(1,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (2,1) + Board(2,2) + Board (2,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
 end

%Step 5. Human goes for 2nd Move
X = input (' Human Player, make your move. Pick an untaken spot on the board 1-9: ');
 switch (X)
    case 1
        Board (1,1) = 1;
    case 2
        Board (2,1) = 1;
    case 3
        Board (3,1) = 1;
    case 4
        Board (1,2) = 1;
    case 5
        Board (2,2) = 1;
    case 6
        Board (3,2) = 1;
    case 7 
        Board (1,3) = 1;
    case 8
        Board (2,3) = 1;
    case 9
        Board (3,3) = 1;
        
 end

Board

if Board(1,1) + Board(1,2) + Board(1,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return 
elseif Board (2,1) + Board(2,2) + Board (2,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
end

%Step 6. CPU goes for 3rd Move
CPUChoices = find(Board >= 11);
CPUMove3 = CPUChoices (randperm(length(CPUChoices),1));
switch (CPUMove3)
    case 1
        Board (1,1) = 0;
    case 2
        Board (2,1) = 0;
    case 3
        Board (3,1) = 0;
    case 4
        Board (1,2) = 0;
    case 5
        Board (2,2) = 0;
    case 6
        Board (3,2) = 0;
    case 7
        Board (1,3) = 0;
    case 8
        Board (2,3) = 0;
    case 9
        Board (3,3) = 0;
end

Board

 if Board(1,1) + Board(1,2) + Board(1,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (2,1) + Board(2,2) + Board (2,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
 end

    
%Step 7. Human goes for 3rd move

X = input (' Human Player, make your move. Pick an untaken spot on the board 1-9: ');
 switch (X)
    case 1
        Board(1,1) = 1;
    case 2
        Board (2,1) = 1;
    case 3
        Board (3,1) = 1;
    case 4
        Board (1,2) = 1;
    case 5
        Board (2,2) = 1;
    case 6
        Board (3,2) = 1;
    case 7 
        Board (1,3) = 1;
    case 8
        Board (2,3) = 1;
    case 9
        Board (3,3) = 1;
        
 end
 
 Board
 
if Board(1,1) + Board(1,2) + Board(1,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return 
elseif Board (2,1) + Board(2,2) + Board (2,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
end

 %Step 8. CPU goes for 4th Move
 
 CPUChoices = find(Board >= 11);
CPUMove4 = CPUChoices (randperm(length(CPUChoices),1));
switch (CPUMove4)
    case 1
        Board (1,1) = 0;
    case 2
        Board (2,1) = 0;
    case 3
        Board (3,1) = 0;
    case 4
        Board (1,2) = 0;
    case 5
        Board (2,2) = 0;
    case 6
        Board (3,2) = 0;
    case 7
        Board (1,3) = 0;
    case 8
        Board (2,3) = 0;
    case 9
        Board (3,3) = 0;
end

Board

    if Board(1,1) + Board(1,2) + Board(1,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (2,1) + Board(2,2) + Board (2,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
    end
     
%Step 9. Human Goes for 4th move

X = input (' Human Player, make your move. Pick an untaken spot on the board 1-9: ');
 switch (X)
    case 1
        Board (1,1) = 1;
    case 2
        Board (2,1) = 1;
    case 3
        Board (3,1) = 1;
    case 4
        Board (1,2) = 1;
    case 5
        Board (2,2) = 1;
    case 6
        Board (3,2) = 1;
    case 7 
        Board (1,3) = 1;
    case 8
        Board (2,3) = 1;
    case 9
        Board (3,3) = 1;
        
 end
 
 Board
 
if Board(1,1) + Board(1,2) + Board(1,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return 
elseif Board (2,1) + Board(2,2) + Board (2,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 3
    Winner = input('Human Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 3
    Winner = input('Human Wins!  Hit enter and click run to play again');
    return
end

 
 %step 10. CPU Goes for 5th move
 
 CPUChoices = find(Board >= 11);
CPUMove4 = CPUChoices (randperm(length(CPUChoices),1));
switch (CPUMove4)
    case 1
        Board (1,1) = 0;
    case 2
        Board (2,1) = 0;
    case 3
        Board (3,1) = 0;
    case 4
        Board (1,2) = 0;
    case 5
        Board (2,2) = 0;
    case 6
        Board (3,2) = 0;
    case 7
        Board (1,3) = 0;
    case 8
        Board (2,3) = 0;
    case 9
        Board (3,3) = 0;
end
     if Board(1,1) + Board(1,2) + Board(1,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (2,1) + Board(2,2) + Board (2,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board (3,1) + Board(3,2) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,1) + Board(3,1) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,2) + Board(2,2) + Board(3,2) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(1,3) + Board(2,3) + Board(3,3) == 0
    Winner = input('Computer Wins! Hit enter and click run to play again');
    return
elseif Board(1,1) + Board(2,2) + Board(3,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
elseif Board(3,1) + Board(2,2) + Board(1,3) == 0
    Winner = input('Computer Wins!  Hit enter and click run to play again');
    return
     end

     if (Board <= 11)
         input(' Its a draw! hit enter and click run to play again!')
     end
         
    
    
    

   