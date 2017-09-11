% Name: Stuart Nezlek
% Due Date: Semtepber 15, 2017
% File description: Assignment #2, Chapter(s) 1,2, and 3 answers

% Chapter 1 Exercises

% 1.) Create a variable to store the atomic weight of copper (63.55)

Cu = 63.55;

% 2.) Create a variable myage and store your age in it. Subtract two from the value of the
%variable. Add one to the value of the variable. Observe the Workspace Window and
%Command History Window as you do this.

Myage = 22;
Myage - 2;
Myage + 1;

% 3.) Use the built-in function namelengthmax to find out the maximum number of
%characters that you can have in an identifier name under your version of
%MATLAB

namelengthmax

% 4.) Create two variables to store a weight in pounds and ounces. Use who and whos
%to see the variables. Clear one of them and then use who and whos again.

Weight = 236;
WeightO = (Weight * 16);
who
whos



% 5.)Use intmin and intmax to determine the range of values that can be stored in the
%types uint32 and uint64

intmin uint32
intmax uint32
intmin uint64
intmax uint64

% 6.) Store a number with a decimal place in a double variable (the default). Convert the
%variable to the type int32 and store the result in a new variable.

dova = 10.23;
int32(dova)

% 11.)Create a variable pounds to store a weight in pounds. Convert this to kilograms and
%assign the result to a variable kilos. The conversion factor is 1 kilogram ¼ 2.2
%pounds

pounds = 205;
kilos = (pounds / 2.2);

% 12.) Create a variable ftemp to store a temperature in degrees Fahrenheit (F). Convert
%this to degrees Celsius (C) and store the result in a variable ctemp. The conversion
%factor is C ¼ (F e 32) * 5/9.

ftemp = 70;
ctemp = (ftemp - 32) * 5/9;

% 13.)Find another quantity to convert from one system of units to another.

newton = 70;
grams = (newton * 101.97);

% 14.)The function sin calculates and returns the sine of an angle in radians, and the
%function sind returns the sine of an angle in degrees. Verify that calling the sind
%function and passing 90 degrees to it results in 1. What argument would you pass
%to sin to obtain the result of 1?

sind(90)
sin(pi/2)

% 15.) The combined resistance Rt of three resistors R1, R2, and R3 in
% parallel is given by Rt = 1/((1/R1) + (1/R2) + (1/R3)). Create variables
% for the three resistors and store values in each, then calculate the
% combined resistance.

R1 = 1;
R2 = 2;
R3 = 3;
Rt = 1/((1/R1) + (1/R2) + (1/R3));

% 22.) In the ASCII character encoding, the letters of the alphabet are, in order: ‘a’ comes
%before ‘b’ and also ‘A’ comes before ‘B’. However, which comes first e lower or
%uppercase letters?

int32('A')
int64('A')
int32('B')
int64('B')
int32('a')
int64('a')
int32('b')
int64('b')

% 24.) What would be the results of the following expressions?
 
'b' >=  'c' - 1
    % logical 1 = true
3 == 2+1
    % logical 1 = true
(3 == 2) + 1
    % logical 1 = true
xor(5<6, 8>4)
    % logical 0 = false
    
% 25.)Create two variables x and y and store numbers in them. Write an expression that
%would be true if the value of x is greater than 5 or if the value of y is less than 10,
%but not if both of those are true.

x= 6;
y= 9;
xor(x > 5, y < 10)

% 26.) Use the equality operator to verify that 3*10^5 is equal to 3e5.

3*10^5== 3e5

% 27.) Use the equality operator to verify the value of log10(10000).

log10(10000)==4

%Chapter 2 exercises

%1. Using the colon operator, create the following row vectors

vec = 2:7;
vec = 1.1 : .2 : 1.7;
vec = 8: -2 : 2;

%2. Give the MATLAB expression that would create a vector (in a variable called vec)
%of 50 elements that range, equally spaced, from 0 to 2p

vec = linspace (0,2*pi,50);

%3. Write an expression using linspace that will result in the same as 2: 0.2: 3.

vec = linspace (2,3,6);

%4. Using the colon operator and also the linspace function, create the following row
%vectors:

vec = (-5:1:-1);
vec = (5:2:9);
vec = (8:-2:4);

%6. Using the colon operator and the transpose operator, create a column vector that
%has the values e1 to 1 in steps of 0.5.

a = (-1:0.5:1);
myvec = transpose(a);

%7. Write an expression that refers to only the odd-numbered elements in a vector,
%regardless of the length of the vector. Test your expression on vectors that have
%both an odd and an even number of elements.
    
b = (1:1:7);
vec = b(1:2:end);

%8. Find an efficient way to generate the following matrix:

mat = [7:10;12:-2:6] ;
mat (1,3)
mat (2,:)
mat (:,1:2)

%9. Generate a 2 x 4 matrix variable mat. Verify that the number of elements is the
%product of the number of rows and columns.

mat = [1:4;5:8];

%10. Generate a 2 x 4 matrix variable mat. Replace the first row with 1:4. Replace the
%third column (you decide with which values).

mat = [11:14;15:18];
mat(1,:) = (1:4);
mat(:,3) = (7:8);

%12. Create a variable rows that is a random integer in the inclusive range from 1 to 5.
%Create a variable cols that is a random integer in the inclusive range from 1 to 5.
%Create a matrix of all zeros with the dimensions given by the values of rows and
%cols.

rows=randi(5,1);
cols=randi(5,1);
zeros(rows,cols)

%23. Find the sum 3 + 5 + 7 + 9 + 11.

sum(3+5+7+9+11)

%26. Find the following sum by first creating vectors for the numerators and
%denominators:

num = (3:2:9);
den = (1:4);
sum(num./den)

%30. Create a vector of five random integers, each in the inclusive range from e10 to 10.
%Perform each of the following:
%n subtract 3 from each element
%n count how many are positive
%n get the absolute value of each element
%n find the maximum.

vector = randi([-10 10], 2, 8);
subtract = vector-3;
numpos = sum(vector> 0);
absoluteValue = abs(vector);
maxValue = max(vector);

%31. Create a 3 x 5 matrix. Perform each of the following:
%n Find the maximum value in each column.
%n Find the maximum value in each row.
%n Find the maximum value in the entire matrix.

random = randi(20, 3, 5);
maxColumn = max(random);
maxRow = max(rot90(random));
randomMax = max(max(random));

%Chapter 3 exercises

%1. Write a simple script that will calculate the volume of a hollow sphere,

% The script will compute the volume of a hollow sphere
% it asks that you assign values for both the inner and outer radii
ro=input('value for outer radius of sphere ');
ri=input('value for inner radius of sphere ');
%the formula for the volume of a hollow sphere is as follows:
volume = 4*pi*(ro^3 - ri^3)/3;
%enter value 2 for ro and 1 for ri, you should get an answer of 29.3215

%4. The input function can be used to enter a vector, such as:
%>> vec = input('Enter a vector: ')
%Enter a vector: 4 : 7
%vec =
%4 5 6 7
%Experiment with this and find out how the user can enter a matrix.

mat = input(' enter a matrix ') ;
%enter [1:3; 4:6; 7 8 9]

%6. Experiment, in the Command Window, with using the fprintf function for real
%numbers. Make a note of what happens for each. Use fprintf to print the real
%number 12345.6789
%n without specifying any field width
%n in a field width of 10 with 4 decimal places
%n in a field width of 10 with 2 decimal places
%n in a field width of 6 with 4 decimal places
%n in a field width of 2 with 4 decimal places.

x = 12345.6789;
fprintf('%f\n',x)
% fprintf('%f/n',x) gives us just the number back with 6 decimal places,
% because we didnt specify the field width
fprintf('%10.4f\n',x)
% fprintf('%10.4f/n',x) gives us a field width of 10 which is enough for
% the number, 9 digits, and a decimal point
fprintf('%10.2f\n',x)
% fprintf('%10.2f/n',x) gives us a field width of 10, but with 2 decimal
% places. because of this, we would get 2 extra spaces on the left and only
% 2 decimal places after on the right
fprintf('%6.4f\n',x);
% fprintf('%6.4f/n',x)gives us the same answer as fprintf('%10.4f/n',x)
% because we have field width of 6 so we at least get a width of 6. Because
% of this, we have the full 10 spaces needed for the number
fprintf('%2.4f\n',x);
% fprintf('%6.4f/n',x)gives us the same answer as fprintf('%10.4f/n',x)
% because we have field width of 2 so we at least get a width of 2. Because
% of this, we have the full 10 spaces

%8. In the metric system, fluid flow is measured in cubic meters per second (m3/s).
%A cubic foot per second (ft3/s) is equivalent to 0.028 m3/s. Write a script titled
%flowrate that will prompt the user for flow in cubic meters per second and will
%print the equivalent flow rate in cubic feet per second. Here is an example of
%running the script. Your script must produce output in exactly the same format as
%this:
%>> flowrate
%Enter the flow in m^3/s: 15.2
%A flow rate of 15.200 meters per sec
%is equivalent to 542.857 feet per sec

Flowrate = input('Enter flow rate in m^3/sec:');%input value of 15.2
fprintf('A flowrate of %.3f cubic meters per second\n',Flowrate)
fprintf('is equal to %.3f cubic feet per second\n',Flowrate/0.028)

%13. In engineering mechanics, a vector is a set of numbers that indicate both
%magnitude and direction. Units such as velocity and force are vector quantities. An
%example of a vector could be <2.34, 4.244, 5.323> meters/second. This vector
%describes the velocity of a particle at a certain point in three-dimensional space,
%<x,y,z>. In solving problems related to vectors, it’s handy to know the unit vector
%of a certain measurement. A unit vector is a vector that has a certain direction, but
%a magnitude of 1. The equation for a unit vector in three-dimensional space is:
%u = {x,y,z}/(sqrt(x2 + y2 + z2))
%Write a script that prompts the user for x, y, and z values, and then calculates the
%unit vector.

x = input('enter x value:'); %imput a value for x
y = input('enter y value:'); %input a value for y
z = input('enter z value:'); %input a value for z
vector = [x y z]; %converts x,y, and z values into a vector
squaredvector = vector.^2; %multplies the vector by itself, so [x y z] * [x y z]
squaredvectorsum = sum(squaredvector,2); % sum of squared vectors
magnitude = squaredvectorsum^(0.5); % square root of squaredvectorsum
u = vector/magnitude;
