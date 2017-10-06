%Tic-Tac-Toe v2 with loops Assignment
% Author: Stuart Nezlek
%Due Date : October 6;
% This Code will allow you to generate and run a game of Tic Tac Toe while
% playing against a computer. Ideally, the computer wil never lose and you
% two will come to a draw for every game played. However, since this
% version will utilize for and while loops, it should require much less
% code to be written in order to run properly.

%Step 1: Prompt player to enter themselves into game
fprintf ('Welcome to Tic-Tac-Toe!\n')
  noHumans = input(' Would you like to play with me? '); % Choose 1
  if (noHumans ~=1)
      disp ('So you dont want to play with me? Fine, leave me then')
      
  elseif(noHumans == 1)
   fprintf ('The board will come up as a 3x3 matrix numbered 11-19\n')
    Board = [11 14 17; 12 15 18; 13 16 19;];
 
  end
  
    
  %Step 2. Assuming a person wants to play, Tic Tac Toe runs in while loop
  %until CPU or Human wins or Draw game
while (noHumans == 1)    
CPUChoices = find(Board >= 11);
CPUMove1 = datasample(CPUChoices,1);
pause(0.5)
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

turns = (1:4);
for i = 1:length(turns)
X = input ('Human Player, make your move. Pick an untaken spot on the board 1-9: ');
if (Board (X) ~= 0)
 spottaken = 0;
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
else disp ('Cant go there! You lose your turn!')
end

Board

if Board(1,1)== 1 && Board(1,2) == 1 && Board(1,3) == 1
    Winner = input('Human Wins!');
    break
elseif Board (2,1)== 1 && Board(2,2)== 1 && Board (2,3) == 1
    Winner = input('Human Wins!');
    break
elseif Board (3,1)== 1 && Board(3,2)== 1 && Board(3,3) == 1
    Winner = input('Human Wins!');
    break
elseif Board(1,1) == 1 && Board(2,1)== 1 && Board(3,1) == 1
    Winner = input('Human Wins!');
    break
elseif Board(1,2) == 1 && Board(2,2) == 1 && Board(3,2) == 1
    Winner = input('Human Wins!');
    break
elseif Board(1,3) == 1 && Board(2,3) == 1 && Board(3,3) == 1
    Winner = input('Human Wins!');
    break
elseif Board(1,1)== 1 && Board(2,2) == 1 && Board(3,3) == 1
    Winner = input('Human Wins!');
    break
elseif Board(3,1) == 1 && Board(2,2) == 1 && Board(1,3) == 1
    Winner = input('Human Wins!');
    break
  end

CPUChoices = find(Board >= 11);
CPUMove1 = datasample(CPUChoices,1);
pause(0.5)
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

if Board(1,1)== 0 && Board(1,2) == 0 && Board(1,3) == 0
    Winner = input('Computer Wins!');
    break
elseif Board (2,1)== 0 && Board(2,2)==0 && Board (2,3) == 0
    Winner = input('Computer Wins!');
    break
elseif Board (3,1)== 0 && Board(3,2)== 0 && Board(3,3) == 0
    Winner = input('Computer Wins!');
    break
elseif Board(1,1) == 0 && Board(2,1)== 0 && Board(3,1) == 0
    Winner = input('Computer Wins!');
    break
elseif Board(1,2) == 0 && Board(2,2) == 0 && Board(3,2) == 0
    Winner = input('Computer Wins!');
    break
elseif Board(1,3) == 0 && Board(2,3) == 0 && Board(3,3) == 0
    Winner = input('Computer Wins!');
    break
elseif Board(1,1)== 0 && Board(2,2) == 0 && Board(3,3) == 0
    Winner = input('Computer Wins!');
    break
elseif Board(3,1) == 0 && Board(2,2) == 0 && Board(1,3) == 0
    Winner = input('Computer Wins!');
    break
end
    

end

noHumans = input ('Would you like to play again? Press 1 to play again ')
if (noHumans == 1)
  fprintf ('Okay lets do this.\n')
  clear 
  clc
run TicTacToev2withloops
 else (noHumans ~= 1);
  fprintf ('Oo, nice playing with you! cya later!\n')
  break
 end


end
 


  

 
 

    
    

  
 
  
  
  

  