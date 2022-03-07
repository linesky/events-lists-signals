#include <linux/kernel.h>
#include "model.h"
int hello_init(){
	pr_debug("hello\n");
}
int hello_exit(){
	pr_debug("bye\n");
}
int start(){
	module_init(hello_init);
	module_exit(hello_exit);
}

