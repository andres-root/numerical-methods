
% La función no es continua en cero, entonces decidí tomar el dominio en
% los positivos partiendo de 0.01 a 1. (0.01. 1)
% Tiene al 9 raices de las cuales escogí 8:
% (0.02, -0.005247), (0.03, 0.02822), (0.04, -0.005294), (0.06, -0.04911),
% (0.08, -0.005306), (0.1, -0.0544), (0.16, -0.005309)
x = 0.01:0.01:1;
y = x.*sin(1./x);
plot(x, y);



