%%  Basics

%df
%------------ EXTRAS
%pwd %gives the current working directory
%cd C:\\ %goes to a different working directory
%lookfor inverse %search for a command
%help inv %gives the manual page for a command
%------------
clear %clear the variables in the workspace
clc %clears the command window

A = [1 2 3; 4 5 6; 7 8 9];
B = [2 2 3; 2 3 2; 3 2 2];

A .* B; %multiplies each one
A ./ B; %divides each one
A * B; %normal matrix multiplication



C = transpose(A); %transposed matrix
inverse = inv(A);

%whos %info on the workspace

%% Search for elements
clc
clear

A = [1 2 3; 4 5 6; 7 8 9]; 
A(2,3) %second row, third column
z = A(:,1);
z2 = A(2, :);

%% Search by index
clc
clear
A = randn(3,3)
[i,j] = find(A>0) %gives the rows and column pairs where A>0


%% Logical Arrays
clc
clear
A = randn(3,3)
logicmatrix = (A > 0)

(A(: ,1) > 0)
B = A( (A(: ,1) > 0) ,1) %gets every value of the first column that is >0


%% Concatenate Matrixes
clc
clear
A = rand(2,2)
B = ones(2,1) %makes a 2x1

C = [A B]
D = [A;transpose(B)]

%% Max and min functions
clc
clear
A = rand(3,3)
maxincolumn = max(A)
minincolumn = min(A)

%% Plots
clc
clear
t = 0:0.01:1 ;
t1 = linspace(0, 1, 101); %begin, end, amount of elements
y = sin(2*pi*t);

%plot(t,y) %plot(xaxis,yaxis, 'parameter', valueOfParameter)
plot(t,y,'LineWidth', 2)

%% If, For, etc
clc
clear
for t=1:10
    t = t+t;
end

k = 0
if k==1
    k=2
else
    k=3
end

while k < 10
    k = k+1
end

%% Use of function
clc
clear
SumaMia(2,3)

%% Added test function
clc
clear
2+2;
C = 2+2;



