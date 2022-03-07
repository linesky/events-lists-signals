#include <stdio.h>
void (*adds1)(int i);
void module_task(void (*adds)){
	adds1=adds;
}
int main(){
	int i;
	start();
	for(i=0;i<19;i++)(*adds1)(i);
	return 0;
}
