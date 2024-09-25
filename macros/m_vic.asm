#importonce

#import "../def/d_vic.asm"
#import "../libs/l_vic.asm"

* = * "M_VIC"

.macro SetBorderColor(color){
	.if(color < 0){
		.error("color must be positive")
	}
		lda #mod(color,16)
		sta VIC.BORDER_COLOR
}