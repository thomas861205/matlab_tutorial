%MATLAB's number start at 1, unlike other programming language start with 0

%submatrix
A = [1 2 3; 4 5 6; 7 8 9]

A(2:3, 2:3) = 
5 6 
8 9

%componentwise division(dimension must agree)
A./B 

% inner product
% x, y: row vectors

dot(x, y) or x*y'

% cross product

cross(x, y)

% built-in constants and functions

sin(A)
exp(A)
log(A)
sqrt(A)
pi
i
eye(3)
zeros(3)
ones(3)
mod(3, 2)
inv(A)
det(A)

% eigenvalues and eigen vectors
e = eig(A)
[V, D] = eig(A)

A*D == V*D % false because of round off error

norm(A*D - V*D) % very small

norm(A, 2) % l2-norm

% Ax = b

x = inv(A)*b
or 
x = A\b % A is under 

% loop

for i = 1:10
	disp(i)
	fprintf("%d", i)
end

%

randn(10, 1)

% 
whos()

% datatype

class(A)

% check attribute 

isfield()
rmfield()
setfield()


% structure

my_struct.name = 'Thomas'
class('Thomas') % name
class(my_struct.name) % char
class(my_struct) % struct

S = struct('name', 'Thomas', 'age', 20)

% cell (the ultimate dictionary)

my_cell{1} = 'Hello'
my_cell{'A'} = 6


% plot

x = [1:10]
y = x*log(x)
plot(x, y)

openfig('name')

% linspace(start, end, points)

linspace()

% plot multiple functions together

plot(X1, Y1, '--', X2, Y2, '.')

% bar charts

x = 1:10

bar(x)

% hist(x, categoryies)

x = randn(1000, 1)

hist(x, 50)

% pie charts

pie()

% scatter plot (not ordered)

scatter(x, y)



% data opening/storing

% excel
	help xlsread
	help xlswrite

% csv
csvread
csvwrite('name.csv', A)

% .mat

save('my_workspace.mat')

load('my_workspace.mat')
