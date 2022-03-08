#include <stdio.h>
void (*adds1[150])(int i);
int value[150];
int indexs=0;
void add_onexit(void (*adds),int i){
	adds1[indexs]=adds;
	value[indexs]=i;
	if(indexs<149)indexs++;
	
}
int main(){
	int i;
	start();
	for(i=0;i<indexs;i++)(*adds1[i])(value[i]);
	return 0;
}
