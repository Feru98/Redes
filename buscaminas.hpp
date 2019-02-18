#ifndef _buscaminas_hpp_
#define _buscaminas_hpp_
#include <iostream>
#include <vector>
#include <string>

struct punto{
	int x;
	int y;
};

class Buscaminas{
 
	//c_str en la conversion de las cadenas al hacer el send en los sockets, ya que hay problemas con string

	private:
		int bombas_;
		int encontradas_;
		std::vector< std::vector<int > > MatrizEscondida;
		std::vector< std::vector<int > > MatrizMostrar;
		std::vector< std::vector<int > > Visitadas;
		//std::vector<std::vector<std::string> > MatrizEscondida = std::vector< std::vector<std::string> >(10, std::vector<std::string>(10));
		//std::vector<std::vector<std::string> > MatrizMostrar = std::vector< std::vector<std::string> >(10, std::vector<std::string>(10));
		//std::string A_="A";
		//std::string B_="B";
		//std::string AB_="AB";

	public:
		//constructor
		Buscaminas(){
			bombas_=20;
			encontradas_=0;

			MatrizEscondida.resize(10);
			for (int a = 0; a < 10; a++){
				MatrizEscondida[a].resize(10,0);
			}

			MatrizMostrar.resize(10);
			for (int a = 0; a < 10; a++){
				MatrizMostrar[a].resize(10,-2);
			}

			Visitadas.resize(10);
			for (int a = 0; a < 10; a++){
				Visitadas[a].resize(10,0);
			}
		}

		Buscaminas(std::vector<std::vector<int> > escondida, std::vector<std::vector<int> > mostrar, std::vector<std::vector<int> >visitadas, int encontradas){
			setMatrizEscondida(escondida);
			setMatrizMostrar(mostrar);
			setVisitadas(visitadas);
			setEncontradas(encontradas);
		}

		//Funciones GET
		inline std::vector<std::vector<int> > getMatrizEscondida(){
			return MatrizEscondida;
		}
		
		inline std::vector<std::vector<int> > getMatrizMostrar(){
			return MatrizMostrar;
		}
		
		inline std::vector<std::vector<int> > getVisitadas(){
			return Visitadas;
		}
		
		//FUNCIONES GET DE A B AB, NO SE MODIFICAN
		int getX(char x);
		
		int getNumero(int y);
		
		inline int getMinas(){
			return bombas_;
		}
		
		inline int getEncontradas(){
			return encontradas_;
		}


		//Funciones SET
		inline void setBombas(int bombas){
			bombas_=bombas;}

		inline void setMatrizEscondida(std::vector<std::vector<int> > MatrizEscondidaAux){
			MatrizEscondida=MatrizEscondidaAux;
		}

		inline void setMatrizMostrar(std::vector<std::vector<int> > MatrizMostrarAux){
			MatrizMostrar=MatrizMostrarAux;
		}

		inline void setVisitadas(std::vector<std::vector<int> > MatrizAux){
			Visitadas=MatrizAux;
		}

		inline void setEncontradas(int encontradas){
			encontradas_=encontradas;
		}


		inline void visitar(int x, int y){
			Visitadas[x][y]=1;
		}
		
		bool estaVisitada(char x, int y);
		bool estaVisitada2(int x , int y );

		bool MatrizPinchar(char x, int y); //Cambia la matriz a mostrar
		int MatrizBandera(char x, int y , char jugador);
		void crearMatrizEscondida();
		void mostrarMatrizEscondida();
		void mostrarMatrizMostrar();
		bool coordenadas(char x, int y);
		void buscaminasGame();
		void Encontrar();
		bool ganar();
		punto abrirZeros(int m , int n , punto aux);
		void MatrizString(char *aux);
		void ConvertirMatrizStringAInt(char *aux);
		void buscaminasCharEscondida(char aux[101]);
		void buscaminasCharMostrar(char aux[101]);
		void buscaminasCharVisitadas(char aux[101]);
};
#endif
