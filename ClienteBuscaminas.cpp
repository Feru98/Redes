#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <arpa/inet.h>
#include <iostream>
#include "macros.hpp"
#include "buscaminas.hpp"

//CLIENTE CHAT PARA BUSCAMINAS


int main(int argc, char *argv[]){

    std::cout << CLEAR_SCREEN;
    PLACE(1,0);

    /*---------------------------------------------------- 
        Descriptor del socket y buffer de datos                
    -----------------------------------------------------*/
    int sd;
    struct sockaddr_in sockname;
    char buffer[250], cadena[250];
    socklen_t len_sockname;
    fd_set readfds, auxfds;
    int salida;
    int fin = 0, partida=0;
    std::vector<std::vector<int> > escondida, mostrar, visitadas;
    int encontradas=0;
    char letras[11] ="ABCDEFGHIJ";
    
    
    /* --------------------------------------------------
        Se abre el socket 
    ---------------------------------------------------*/
    sd = socket (AF_INET, SOCK_STREAM, 0);
    if (sd == -1){
        perror("No se puede abrir el socket cliente\n");
            exit (1);   
    }

   
    
    /* ------------------------------------------------------------------
        Se rellenan los campos de la estructura con la IP del 
        servidor y el puerto del servicio que solicitamos
    -------------------------------------------------------------------*/
    if(!argv[1]){
        sockname.sin_family = AF_INET;
        sockname.sin_port = htons(2000);
        sockname.sin_addr.s_addr =  inet_addr("127.0.0.1");
    }else{ 
        sockname.sin_family = AF_INET;
        sockname.sin_port = htons(2000);
        sockname.sin_addr.s_addr =  inet_addr(argv[1]);
    }
    /* ------------------------------------------------------------------
        Se solicita la conexión con el servidor
    -------------------------------------------------------------------*/
    len_sockname = sizeof(sockname);
    
    if (connect(sd, (struct sockaddr *)&sockname, len_sockname) == -1){
        perror ("Error de conexión");
        exit(1);
    }
    
    //Inicializamos las estructuras
    FD_ZERO(&auxfds);
    FD_ZERO(&readfds);
    
    FD_SET(0,&readfds);
    FD_SET(sd,&readfds);

    
    /* ------------------------------------------------------------------
        Se transmite la información
    -------------------------------------------------------------------*/

    do{
        auxfds = readfds;
        salida = select(sd+1,&auxfds,NULL,NULL,NULL);
        //Tengo mensaje desde el servidor
        if(FD_ISSET(sd, &auxfds)){
            
            bzero(buffer,sizeof(buffer));
            recv(sd,buffer,sizeof(buffer),0);
            
            if(strncmp(buffer, "(", 1)!=0){
                std::cout<<buffer<<std::endl;
            }
            if(strcmp(buffer,"-Err. Demasiados clientes conectados\n") == 0)
                fin =1;
            
            else if(strcmp(buffer,"-Err. Desconexion servidor\n") == 0)
                fin =1;
            else if(strncmp(buffer, "(", 1)==0){
                
                int count=1;

                std::cout<<"|"<<" "<<"|\t";
                
                for (int l = 0; l < 10; ++l){
                    std::cout<<"|"<<letras[l]<<"|\t";
                }
                std::cout<<std::endl;
                for(int i = 0; i<10; i++){
                    std::cout<<"|"<<i<<"|\t";
                    for(int j=0 ; j<10; j++){
                        if(buffer[count]=='-'){
                            std::cout<<"|"<<buffer[count]<<"|\t";
                            count+=2;
                        }
                        else if(buffer[count]=='A'){
                            std::cout<<"|"<<buffer[count]<<"|\t";
                            count+=2;
                        }

                        else if(buffer[count]=='B'){
                            std::cout<<"|"<<buffer[count]<<"|\t";
                            count+=2;
                        }

                        else if(buffer[count]=='C'){
                            std::cout<<"|AB|\t";
                            count+=2;
                        }

                        else if((buffer[count]!='-') && (buffer[count]!='A') && (buffer[count]!='B') && (buffer[count]!='C') && (buffer[count]!=',') && (buffer[count]!=';')){
                            std::cout<<"|"<<(int)buffer[count]<<"|\t";
                            count+=2; 
                        }
                    }                                     
                    std::cout<<"\n";
                }
                std::cout<<"\n"; 
            }
        }else{
            //He introducido información por teclado
            if(FD_ISSET(0,&auxfds)){
                bzero(buffer,sizeof(buffer));
                fgets(buffer, sizeof(buffer), stdin);
                buffer[strlen(buffer)-1]='\0';
                if(strcmp(buffer,"AYUDA")==0){
                    std::cout<<"Los comandos son los siguientes: \n"<<BIGREEN<<"INICIAR-PARTIDA"<<RESET<<" (Requiere estar registrado y logueado)\n"<<BIGREEN<<"USUARIO <nombre_usuario>"<<RESET<<" para introducir tu nombre de usuario\n"<<BIGREEN<<"PASSWORD <password_del_usuario> "<<RESET<<"con esto se completa el login del usuario\n"<<BIGREEN<<"REGISTRO USUARIO <nombre_usuario> PASSWORD <password_del_usuario> "<<RESET<<"con esto puede registrarse en el juego\n"<<BIGREEN<<"SALIR "<<RESET<<"para salir del juego\n";
                    bzero(buffer,sizeof(buffer));
                }else{                
                    if(strcmp(buffer,"SALIR") == 0){ //Se deberia enviar al servidor tambien
                            fin = 1;
                    }
                    send(sd,buffer,sizeof(buffer),0);
                }  
            } 
        }           
    }while(fin == 0);
        
    close(sd);

    return 0;
        
}