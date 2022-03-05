#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>

static int hello_init(){
	pr_debug("hello\n");
}
static int hello_exit(){
	pr_debug("bye\n");
}
module_init(hello_init);
module_exit(hello_exit);
