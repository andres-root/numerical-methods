x0 = pi/2;
x = linspace(-2*pi, 2*pi);

% Grade 1 Polynomial

p1 = @ (x) ( -(x - x0));


% Grade 3 Polynomial

p3 = @ (x) ( -(x - x0) + (1/6)*(x - x0).^3);

% Grade 5 Polynimial

p5 = @ (x) ( -(x - x0) + (1/6)*(x - x0).^3 - (1/120)*(x - x0).^5);

vr = cos(pi/3);
va = p3(pi/3);

% Absolute Error
ae = abs(vr - va);

% Relative Error
re = abs((vr-va)/vr);

% Percentual Relative Error
pre = abs((vr-va)/vr) * 100;

fprintf('Errors: %f %f %f', ae, re, pre);

% Plots
x0 = pi/2;
x = linspace(-2*pi, 2*pi);

% Original Function
figure(1);
plot(x, cos(x), 'r');
xlabel('X');
ylabel('Y');
xlim([-3 6]);
hold on;
plot(x0, cos(x0), 'o');

% Plot Grade 5 Polynomial
plot(x, p5(x), '-.b');
title = 'G5';
text(-2, p5(-2), title);

% Plot Grade 3 Polynomial
plot(x, p3(x), '+m');
title = 'G3';
text(-2, p3(-2), title);

% Plot Grade 1 Polynomial
plot(x, p1(x), 'b');
title = 'G1';
text(-2, p1(-2), title);