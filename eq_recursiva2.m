% Exemplo de Algoritmo de Equa??es Recursivas
% Circuito RC
clc
clear
format long

E = 10;
NT = 26;
T = 5e-3;          % per?odo de amostragem
R = NT;
C = 1000e-6;

Vo = 0;           % valor inicial
%Io = Vo / R;

RC = R*C;           % constante RC
Tf = NT*0.01;      % tempo final de simula??o
a = exp(-T/RC);
b = 1-exp(-T/RC);
% a=0.2;


% Gr?fico "cont?nuo" com 1000 pontos
t = 0:Tf/999:Tf;
%I1 = Io*exp(-t/RC);
V1 = E*(1-exp(-t/RC));
figure(1)
plot(t,V1)
hold on             % lembrar de hold off no final

% Gr?fico discreto
k = 0:Tf/T;
V2 = E*(1-exp(-k*T/RC));
plot(k*T,V2,'*r')

% Gr?fico discreto a partir da equa??o recursiva

% Condi??o Inicial
V3(1) = Vo;   % para k = 0

% for j=1:length(k)-1
%    I3(j+1)=a*I3(j);
% end
% plot(k*T,I3,'ok')

% ou
for j=2:length(k)
    V3(j)=a*V3(j-1)+b*E;
end
plot(k*T,V3,'ok')


hold off