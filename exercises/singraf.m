
% La funci�n no es continua en cero, entonces decid� tomar el dominio en
% los positivos partiendo de 0.01 a 1. (0.01. 1)
x = 0.01:0.01:1;
y = x.*sin(1./x);
plot(x, y);



