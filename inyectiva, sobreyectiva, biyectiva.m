 %Octave Script
%Title            :Funci�n inyectiva, sobreyectiva y biyectiva
%Description      :Script para recordar y volver a ver  las funciones inyectiva,sobreyectiva y biyectiva   
%Autor            :Salomon Miranda Guzman 
%Version          :1
%Date             :15/11/21
%Notes            :https://youtu.be/-9sJnBLJxKI

clear

%Dominio de la funci�n
x=[-20:1:20];

%Funci�n a plotear
gx=x.^2

%Plotear funcion
plot(x, gx)

%marcar el plano cartesiano 
hold on
grid on;
plot([-20 20],[0 0],'k+-',"linewidth",2,"markersize",8);
title(['No es ningun tipo de funci�n']);
disp('La representaci�n de la grafica no puede ser inyectiva porque la imagen llega dos veces');
disp('Tampoco es Sobreyectiva porque sobran elementos en el plano carteciano');
disp('Mucho menos es bitectiva porque no cumple en ser inyectiva y sobreyectiva al mismo tiempo');

clear 
%Iniciar paquete symbolic
pkg load symbolic 
syms h

%Dominio de la funci�n
x=[0:1:40];

%Funci�n a plotear
hx=x.^2

%Plotear funci�n
plot (x, hx)
%marcar el plano cartesiano 
hold on
grid on;
plot([-40 40],[0 0],'k+-',"linewidth",2,"markersize",8);
plot([0 0],[-2000 2000],'k+-',"linewidth",2,"markersize",8);
title(['Funci�n Inyectiva']);
disp('La grafica es Inyectiva')
disp('por que la imagen solo llega una vez a el dominio');

clear

%Dominio de la funci�n
x=[-15:1:20];

%Funci�n a plotear
fx= x.^3

%Plotear funci�n
plot (x, fx)
%marcar el plano cartesiano 
hold on;
grid on;
plot([-20 20],[0 0],'k+-',"linewidth",2);
plot([0 0],[-8000 8000],'k-',"linewidth",2);
title(['Funci�n Biyectiva']);
disp('La Grafica es Biyectiva')
disp('Porque es inyectiva y sobreyectiva al mismo tiempo');

clear

%Dominio de la funci�n
x=[-32:1:45];

%Funci�n a plotear
rx= nthroot(x.^3,3);

%Plotear funci�n
plot (x, rx)

%marcar el plano cartesiano 
hold on
grid on;
plot([-40 60],[0 0],'k+-',"linewidth",2,"markersize",8);
plot([0 0],[-60 60],'k+-',"linewidth",2,"markersize",8);
title(['Funci�n Biyectiva']);
disp('La grafica es biyectiva, porque es tanto intectiva y sobreyectiva');

clear 

%Dominio de la funci�n
x=[-20:1:20];

%Funci�n a plotear
fx=((x.^4)(+1)./(x.^3));

%Plotear funci�n
plot (x, fx)

%marcar el plano cartesiano 
hold on
grid on;
title(['Funci�n Inyectiva']);
disp('La grafica es inyectiva por que el rango o imagen solo toca una vez');

clear 

%Iniciar paquete symbolic
pkg load symbolic
syms r

%Dominio r 
r=[-30:1:-1];

%Funcion a  plotear 
rx=1./(r.^3);

%Plotear funci�n
plot(r,rx)

%marcar el plano cartesiano 
hold on
grid on;
plot([-30 30],[0 0],'k+-',"linewidth",2,"markersize",8);
plot([0 0],[-1 1],'k+-',"linewidth",2,"markersize",8);
title(['Funci�n inyectiva']);
disp('La grafica es inyectiva porque la imagen llega solo una vez el dominio')