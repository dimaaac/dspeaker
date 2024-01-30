#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");

int init_module() {
    printk(KERN_INFO "DSpeaker module loaded!\n");
    return 0;
}

void cleanup_module() {
    printk(KERN_INFO "DSpeaker module unloaded!\n");
}

