% Exemplo de Algoritmo de Equa??es Recursivas
% Circuito RC
clc
clear
format long

NT = 26;
T = 5e-3;          % per?odo de amostragem
R = NT;
C = 1000e-6;

Vo = 100;           % valor inicial
Io = Vo / R;

RC = R*C;           % constante RC
Tf = NT*0.01;      % tempo final de simula??o
a = exp(-T/RC);
% a=0.2;


% Gr?fico "cont?nuo" com 1000 pontos
t = 0:Tf/999:Tf;
I1 = Io*exp(-t/RC);
figure(1)
plot(t,I1)
hold on             % lembrar de hold off no final

% Gr?fico discreto
k = 0:Tf/T;
I2 = Io*exp(-k*T/RC);
plot(k*T,I2,'*r')

% Gr?fico discreto a partir da equa??o recursiva

% Condi??o Inicial
I3(1) = Io;   % para k = 0

% for j=1:length(k)-1
%    I3(j+1)=a*I3(j);
% end
% plot(k*T,I3,'ok')

% ou
for j=2:length(k)
    I3(j)=a*I3(j-1);
end
plot(k*T,I3,'ok')


hold off