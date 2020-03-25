clear all;
close all;
clc;

%Zadanie 1 a)

% Macierz wspolczynnikow
A = [2, 1, 1, -1; 1, 1, -1, 1; 1, 1, 1,1; -1, 2, -1, 1]; 
% Macierz wyrazow wolnych
B = [3; 4; 10; 4]; 
% Macierz uzupelniona
U = [A, B]; 
% Macierz niewiadomych
X = [0; 0; 0; 0]; 
%Rozwi�zanie r�wnania
X = linsolve(A, B); 

% Twierdzenie Kroneckera-Capellego
% Liczba niewiadomych
numberOfUnknownValues = size(X,1); 
% Rz�d macierzy wspolczynnikow
rankA = rank(A); 
% Rz�d macierzy uzupelnionej
rankU = rank(U); 

if isequal(rankA,rankU,numberOfUnknownValues)
        disp('Uk�ad posiada jedno rozwiazanie');
        disp(X);
elseif rankU == rankA && rankA < numberOfUnknownValues
        disp('Uk�ad nieoznaczony, niesko�czenie wiele rozwi�za�.');
else
        disp('Uk�ad sprzeczny, nie posiada rozwiaza�.');
end
