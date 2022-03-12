#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>
void handler(int value){
	printf("\n signal:%d\n",value);
	exit(0);
}

int main(){
	signal(SIGINT,handler);
	puts("press crt-break");
	while(1){
	};
	return 0;
}
