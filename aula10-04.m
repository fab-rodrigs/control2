% Exemplo Transformada Z

% f(k) = a^k
% F(z) = z/(z-a)

% Relação entre os polos de F(z) e a evolução temporal de f(k)
NT = 26;
%a = NT/10;
%wot = NT/50;
m = round(NT/10);
k = 0:10;
%fk = a.^k;
%fk = sin(wot*k);
fk = impz(k-m);

%den = [1,-2*cos(wot),1];
%p = roots(den);

figure(1)
subplot(1,2,1)
plot(k,fk,'*')
xlabel('k')
ylabel('f(k)')
title('evolução temporal de f(k)')

subplot(1,2,2)
%zplane([],a)
%zplane([],p)
zplane([],a)
title('polos de F(z)')

% para impulso em k=m:  kroneckerDelta(0:10,sym(m))
