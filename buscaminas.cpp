#include <vector>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <locale> 
#include "buscaminas.hpp"

int Buscaminas::getX(char x){
	switch (x){
		case 'A':
			return 0;
			break;

		case 'B':
			return 1;
			break;

		case 'C':
			return 2;
			break;

		case 'D':
			return 3;
			break;

		case 'E':
			return 4;
			break;
		case 'F':
			return 5;
			break;

		case 'G':
			return 6;
			break;

		case 'H':
			return 7;
			break;

		case 'I':
			return 8;
			break;

		case 'J':
			return 9;
			break;

		default:
			return -1;
			break;
	}
}

bool Buscaminas::estaVisitada(char x , int y){
	
	std::vector< std::vector<int > > aux;
	int a=getX(x);
	aux=getVisitadas();
	
	if(aux[y][a]==0){
		return false;
	}else{
		return true;
	}
}

bool Buscaminas::estaVisitada2(int x, int y){
	
	std::vector< std::vector<int > > aux;
	aux=getVisitadas();
	

	if(aux[x][y]==0){
		
		return false;
	}else{
		
		return true;
	}
}



bool Buscaminas::ganar(){
	if(getEncontradas()==10){
		return true;
	}
	return false;
}

void Buscaminas::Encontrar()
{
	int aux;
	aux=getEncontradas();
	aux++;
	setEncontradas(aux);
}

int Buscaminas::getNumero(int y){
	if(y>=0 && y<10)
		return 1;
	else{
		return -1;
	}
}

bool Buscaminas::coordenadas(char x, int y){
	int comprobador;
	comprobador=getX(x);
	if((std::isupper(x))!=0 && (comprobador!=-1)){
		comprobador=getNumero(y);
		if((comprobador!=-1)){
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}
}

void Buscaminas::crearMatrizEscondida(){
	srand(time(NULL));
	int i, j, x, y, contador=0, numero=0, minas, a, b;
	std::vector<std::vector<int > > MatrizAux ;
	/*
	MatrizAux.resize(10);
			for (int a = 0; a < 10; a++)
			{
				MatrizEscondida[a].resize(10,0);
			}
		*/
			MatrizAux= getMatrizEscondida();

	do{
		for(i=0;i<10;i++){
			for(j=0;j<10;j++){
				if(contador!=getMinas()){
					numero=(rand()%101);
					if(numero<30){
						MatrizAux[i][j]=-1;
						//std::cout<<MatrizAux[i][j]<<"\t";
						contador++;
					}
				}
			}
		}
	}while(contador!=getMinas());

	setMatrizEscondida(MatrizAux);
	
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			if(MatrizAux[i][j]!=-1){
				minas=0;
				for(x=-1;x<2;x++){
					for(y=-1;y<2;y++){
						a=i-x;
						b=j-y;
						if((a >= 0 && b >= 0)  && (a < 10 && b < 10)){
							if(MatrizAux[a][b]==-1)
								minas++;
						}
					}
				}
				MatrizAux[i][j]=minas;
			}
		}
	}
	setMatrizEscondida(MatrizAux);
}

bool Buscaminas::MatrizPinchar(char x, int y){
	punto xd;
	std::vector<std::vector<int > > MatrizAux1=getMatrizEscondida();
	std::vector<std::vector<int > > MatrizAux2=getMatrizMostrar();
	int a=getX(x);
	MatrizAux2[y][a]=MatrizAux1[y][a];
	setMatrizMostrar(MatrizAux2);

	visitar(y , a);

	if (MatrizAux2[y][a]==-1){
		//llamar a funcion que le diga al cliente que se vaya o yo que se xd
		return false;
	}

	if (MatrizAux2[y][a]==0){
		xd=abrirZeros(y, a , xd);
	}
	return true;
}

punto Buscaminas::abrirZeros(int m , int n , punto aux){
	std::vector<std::vector<int > > MatrizAux2=getMatrizEscondida();
	std::vector<std::vector<int > > MatrizAux;
	int a ,b ;
	punto p;
	for(p.x=-1;p.x<2;p.x++){
			for(p.y=-1;p.y<2;p.y++){
				a=m-p.x;
				b=n-p.y;
				if((a >= 0 && b >= 0)  && (a < 10 && b < 10)){
					MatrizAux=getMatrizMostrar();
					MatrizAux[a][b]=MatrizAux2[a][b];
					setMatrizMostrar(MatrizAux);
					if (MatrizAux[a][b]==0)
					 
					{
						
						if ( estaVisitada2(a,b)==false )
						{
							//printf("a:%d b:%d m:%d n:%d \n", a , b , m ,n);
						visitar(a,b);
						p=abrirZeros(a , b , p);
						//printf("holi\n");
						}
					}
					else
					{
						visitar(a,b);
					}
				}
			}
		}
	return aux;
}

int Buscaminas::MatrizBandera(char x, int y, char jugador){
	std::vector<std::vector<int > > MatrizAux ;
	std::vector<std::vector<int > > MatrizAux2 ;
	MatrizAux=getMatrizMostrar();
	MatrizAux2=getMatrizEscondida();
	int a=getX(x);
	int ret;
	if (estaVisitada2(y,a)==true)
	{
		if(MatrizAux[y][a]==-5)
		{
			ret=-1;
		}
		else if(jugador=='A')
		{
			if (MatrizAux[y][a]==-3)
			{
				ret= -1;
			}
			else
			{
				MatrizAux[y][a]=-5;
				ret= 0;
			}
		}
		else
		{
			if (MatrizAux[y][a]==-4)
			{
				ret= -1;
			}
			else
			{
				MatrizAux[y][a]=-5;
				ret= 0;
			}
		}
	}
	else{
		if (jugador=='A'){
			MatrizAux[y][a]=-3;
			ret= 0;
		}else if (jugador=='B'){
			MatrizAux[y][a]=-4;
			ret= 0;
		}
		
	}
	setMatrizMostrar(MatrizAux);

	//se van contando las banderas que acierta
	if(MatrizAux2[y][a]==-1)
	{
		Encontrar();
		if(ganar()==true)
		{
			ret=1;
		}
	}

	visitar(y,a);
	return ret;
}


void Buscaminas::mostrarMatrizEscondida(){
	int i, j;
	std::vector<std::vector<int> > MatrizAux = getMatrizEscondida();
	for(i = 0; i < 10; i++){
		for(j=0 ; j<10; j++){
			std::cout<<"|"<<MatrizAux[i][j]<<"|\t";
		}
		std::cout<<"\n";
	}
	std::cout<<std::endl;
	std::cout<<std::endl;
}

void Buscaminas::mostrarMatrizMostrar(){
	int i, j;
	char letras[11] ="ABCDEFGHIJ";
	std::cout<<"|"<<" "<<"|\t";
	for (int l = 0; l < 10; ++l){
		std::cout<<"|"<<letras[l]<<"|\t";
	}
	std::cout<<std::endl;

	std::vector<std::vector<int> > MatrizAux = getMatrizMostrar();
	for(i = 0; i < (int) MatrizAux.size(); i++){
		std::cout<<"|"<<i<<"|\t";
		for(j=0;j<(int) MatrizAux.size(); j++){
			if (MatrizAux[i][j]==-2){
				std::cout<<"|"<<"-"<<"|\t";
			}
			else if (MatrizAux[i][j]==-1){
				std::cout<<"|"<<"*"<<"|\t";
			}
			else if (MatrizAux[i][j]==-3){
				std::cout<<"|"<<"A"<<"|\t";
			}
			else if (MatrizAux[i][j]==-4){
				std::cout<<"|"<<"B"<<"|\t";
			}
			else if (MatrizAux[i][j]==-5){
				std::cout<<"|"<<"AB"<<"|\t";
			}else{
				std::cout<<"|"<<MatrizAux[i][j]<<"|\t";
			}
		}
		std::cout<<"\n";
	}
	std::cout<<std::endl;
	std::cout<<std::endl;
}

void Buscaminas::buscaminasGame(){
	int aux=0, a, y, opcion;
	char s, x, jugador='A';
	crearMatrizEscondida();

	mostrarMatrizEscondida();

	
	mostrarMatrizMostrar();

	while(aux==0){
		coordenadas(x,y);

		if(estaVisitada(x,y)==true)
		{
			printf("casilla ya visitada\n");
		}
		else{
		std::cout<<"Pulse 1 para descubrir pulse 2 para poner una bandera\n";
		std::cin>>opcion;
		switch(opcion){
			case 1:
				MatrizPinchar(x, y);
				mostrarMatrizMostrar();
				break;

			case 2:
				MatrizBandera(x, y, jugador);
				mostrarMatrizMostrar();
				break;

			default: 
				std::cout<<"Opción errónea, eliga entre 1 o 2\n";
				break;
			}	
		}
	}
}

void Buscaminas::buscaminasCharEscondida(char aux[101]){
	std::vector<std::vector<int> > MatrizAux = getMatrizEscondida();
	int a=0;
	for (int i = 0; i < 10; ++i){
		for (int j = 0; j < 10; ++j){
			MatrizAux[i][j]=aux[a];
			a++;
		}
	}
	setMatrizEscondida(MatrizAux);
}


void Buscaminas::buscaminasCharMostrar(char aux[101]){
	std::vector<std::vector<int> > MatrizAux = getMatrizMostrar();
	int a=0;
	for (int i = 0; i < 10; ++i){
		for (int j = 0; j < 10; ++j){
			MatrizAux[i][j]=aux[a];
			a++;
		}
	}
	setMatrizMostrar(MatrizAux);
}

void Buscaminas::buscaminasCharVisitadas(char aux[101]){
	std::vector<std::vector<int> > MatrizAux = getVisitadas();
	int a=0;
	for (int i = 0; i < 10; ++i){
		for (int j = 0; j < 10; ++j){
			MatrizAux[i][j]=aux[a];
			a++;
		}
	}
	setVisitadas(MatrizAux);
}

void Buscaminas::MatrizString(char *aux){
    int i, j;
    int count=0;
    std::vector<std::vector<int> > MatrizAux = getMatrizMostrar();
    aux[count]='(';
    count++;
    for(i = 0; i < 10; i++){
        for(j=0 ; j<10; j++){
            if (MatrizAux[i][j]==-2){
				aux[count]='-';
			}
			else if (MatrizAux[i][j]==-1){
				aux[count]='*';
			}
			else if (MatrizAux[i][j]==-3){
				aux[count]='A';
			}
			else if (MatrizAux[i][j]==-4){
				aux[count]='B';
			}
			else if (MatrizAux[i][j]==-5){
				aux[count]='C';
			}else{
				aux[count]=MatrizAux[i][j];
			}

            count++;
            if(j!=9)
            {
            aux[count]=',';
        	count++;
        	}
        }
        aux[count]=';';
        count++;
    }
}