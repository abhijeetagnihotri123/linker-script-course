/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */
MEMORY {
    SOME_MEMORY : ORIGIN = 0xA000 , LENGTH = 0x1000
}

SECTIONS {
    .text : {
        main.o (.text)
    } > SOME_MEMORY

    .data : {
        main.o (.data)
    } > SOME_MEMORY

    .bss : {
        main.o (.bss)
    } > SOME_MEMORY
}
