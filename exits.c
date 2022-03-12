#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
void handler(int value){
	printf("\n signal:%d\n",value);
	exit(0);
}
void eexits(int i,void *arg){
	printf("\n on_exits:%s\n",arg);
}
int main(){
	signal(SIGINT,handler);
	on_exit(eexits,(void *) 0);
	puts("press crt-break");
	while(1){
	};
	return 0;
}
