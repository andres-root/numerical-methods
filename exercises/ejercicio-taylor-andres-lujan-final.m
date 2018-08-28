% 1: Uncoment to see results

% P1 = @(x) -4 + 6.*x
% P2 = @(x) -4 + 6.*x - x.^2
% P3 = @(x) -4 + 6.*x - x.^2 - 4*x.^3
% est = P3(0.4);
% f = @(x) 2*x.*cos(2*x) - (x-2).^2
% real = f(0.4);
% 
% error = abs(est - real)
% rel = abs(error*100/real)
% 
% x = -3:0.1:3;
% 
% figure
% hold on;
% plot(x, f(x), 'r');
% plot(x, P3(x), 'b');
% plot(x, P2(x), 'g');
% plot(x, P1(x), 'm');
% text(-2, 40, '\leftarrow P3(X)= -4 + 6x - x^2 - 4x^3');
% hold off;


% 2: Uncomment to see results

% P1 = @(x) 1 + (x/2)
% P2 = @(x) 1 + (x/2) - (x.^2)/8 + (x.^3)/16
% P3 = @(x) 1 + (x/2) - (x.^2)/8 + (x.^3)/16 - (5*x.^4)/128 + (7.*x.^5)/256
% est = P3(0);
% f = @(x) sqrt(x+1)
% real = f(0);
% 
% error = abs(est - real)
% rel = abs(error*100/real)
% 
% x = -1:0.1:1;
% 
% figure
% hold on;
% plot(x, f(x), 'r');
% plot(x, P3(x), 'b');
% plot(x, P2(x), 'g');
% plot(x, P1(x), 'm');
% hold off;

% 3: Uncomment to see results

% P1 = @(x) 1 + x
% P2 = @(x) 1 + x - (x.^3)/3
% est = P2(0.5);
% f = @(x) exp(x).*cos(x);
% real = f(0.5);
% 
% error = abs(est - real)
% rel = abs(error*100/real)
% 
% x = -3:0.1:3;
% 
% figure
% hold on;
% plot(x, f(x), 'r');
% plot(x, P2(x), 'g');
% plot(x, P1(x), 'm');
% hold off;

% 4: Uncomment to see results

P1 = @(x) x
P2 = @(x) x + x.^3
P3 = @(x) x + x.^3 + x.^5 / 2
P4 = @(x) x + x.^3 + x.^5 / 2 + x.^7 / 6

est = P4(0);
f = @(x) x*exp(x^2);
real = f(0);

error = abs(est - real)
rel = abs(error*100/real)

x = -3:0.1:3;

figure
hold on;
plot(x, f(x), 'r');
plot(x, P2(x), 'g');
plot(x, P1(x), 'm');
hold off;

