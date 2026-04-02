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
        globals.o (.text)
    } > SOME_MEMORY

    .data : {
        main.o (.data)
        globals.o (.data)
    } > SOME_MEMORY

    .bss : {
        main.o (.bss)
        globals.o (.bss)
    } > SOME_MEMORY

    /DISCARD/ : {
        globals.o(*)
    }
}
