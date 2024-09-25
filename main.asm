#importonce
MyBasicUpstart(1971,main,@"\$0D\$0E\$12\$1E                                        \$05mAZEgENERATOR (c)2024 rETROpROGRAMMATION\$1E                                        \$05\$0D",1,4)

#import "./macros/m_basic.asm"
#import "./libs/l_vic.asm"
#import "./libs/l_fonctions.asm"
#import "./libs/l_laby.asm"

*=* "MAIN"
main:
	lda #6
	sta VIC.BORDER_COLOR

	jsr VIC.CLEARSCREEN

	lda VIC.MEMORY_SETUP_REGISTER
	and #240
	ora #8
	sta VIC.MEMORY_SETUP_REGISTER

	jsr FN.RANDOM.INIT
	jsr	LABY.INIT

	jsr LABY.GENERATE

	jsr	LABY.DISPLAY

	lda #14
	sta VIC.BORDER_COLOR

	jmp *

* = $2000 "CHARSET"
.import binary "./assets/Chars3.bin"

* = 49152 "LABYDATAS"
LabyDatasLocation:

