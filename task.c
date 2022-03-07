#include "task.h"
void task1(int i){
	printf("%d\n",i);
}

int start(){
	module_task(task1);
	return 0;
}
