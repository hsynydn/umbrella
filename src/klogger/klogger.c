/**
 * 	\file 		klogger.h
 * 	\brief 		KeyLogger Kernel Module
 * 	\details	A module which listens every keystrokes
 * 				and saves into database
 *	\author 	hsynydn
 *	\date		25 September 2021
 *	\warning	For education purpose only
 *	\copyright	GNU Public License
 */

#include "klogger.h"

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

/**
 *	\fn		init_module
 *	\brief	module initialization
 */
int init_module(void){

	MODULE_LICENSE(LICENCE);
	MODULE_AUTHOR(AUTHOR);
	MODULE_DESCRIPTION(DESCRIPTION);

	printk(KERN_INFO "Hello World\n");
	return 0;
}

/**
 *	\fn		cleanup_module
 *	\brief	module removing
 */
void cleanup_module(void){
	printk(KERN_INFO "Goodbye World\n");
}
