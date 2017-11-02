function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Stuart Nezlek
%
%         DUE: November 2
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 10 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc %%%%% error #1.. delete "()" after clc %%%%%
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while (level > 3) || (level < 1) %%%%% error #2.. I kept getting an invalid selection with the previous syntax, So I changed it to "(level > 3) || (level < 1)" instead of using =~     
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner    %%%%% error#3.. added the forgotten = to make it ==                 

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;  %%%%% error #4.. Capitalize H in Highest so the variable is now "advancedHighest" %%%%%        
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest, 1);   %%%%% error #5.. Replaced "floor(rand() + 1 * highest);" with randi(highest, 1) because previous syntax didn't randomly selected number  %%%%%  

% initialize number of guesses and User_guess

numOfTries = 0;  %%%%% error#6.. changed numOfTries value from 1 to 0 so I'd start at turn 1 instead of turn 2 %%%%%
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while (userGuess < 1 || userGuess > highest) %%%%% error#7.. replaced ">=" with ">" %%%%%

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');


end % of guess validation loop
 

% add 1 to the number of guesses the user has made

% numOfTries = numOfTries + 1;
numOfTries = numOfTries + 1;
% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %%%%% error#8.. wasn't displaying too high or too low %%%%%
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else   
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); %%%%% error#9 .. added "numOfTries" %%%%%
end % of guessing while loop

if userGuess == secretNumber %%%%% error#10.. Wasn't displaying game over, So I had to make an if statement for it to display %%%%%
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
end % end of made if statement

end % end of game
