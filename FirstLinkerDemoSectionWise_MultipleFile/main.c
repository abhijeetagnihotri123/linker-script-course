/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */

extern int uninit_global; // This will go to .bss section
extern int init_global; // This will go to .data section

int foo(int label){ //This will go to .text section
    return label + uninit_global + init_global;
}