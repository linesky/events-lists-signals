#include "onexit.h"
void task1(int i){
	printf("%d\n",i);
}

int start(){
	int i;
	for(i=0;i<50;i++)add_onexit(task1,i);
	return 0;
}
