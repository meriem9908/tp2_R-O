/*********************************************
 * OPL 12.6.0.0 Model
 * Author: CLINIC PC
 * Creation Date: 17 avr. 2022 at 21:23:13
 *********************************************/



//déclarer un intervalle d'entiers de 1 à nbObjet
range N=1..6;
range M=1..6;

// Déclarer les variables de décisions
dvar boolean x[N][M];

//déclarer des tableaux de données indexés sur les objets
int p[N][M]=[[13,24,31,19,40,29],[18,25,30,15,43,22],[20,20,27,25,34,33],[23,26,28,18,37,30],[28,33,34,17,38,20],[19,36,25,27,45,24]];


// function objectif
maximize sum(i in N)sum(j in M)p[i][j]*x[i][j];

// contraintes
subject to{
sum(i in N)x[i][1]==1;
sum(i in N)x[i][2]==1;
sum(i in N)x[i][3]==1;
sum(i in N)x[i][4]==1;
sum(i in N)x[i][5]==1;
sum(i in N)x[i][6]==1;
sum(j in M)x[1][j]== 1;
sum(j in M)x[2][j]== 1;
sum(j in M)x[3][j]== 1;
sum(j in M)x[4][j]== 1;
sum(j in M)x[5][j]== 1;
sum(j in M)x[6][j]== 1;
}
 