#importonce

#import "../def/d_vic.asm"
#import "../macros/m_vic.asm"

* = * "L_VIC"

.namespace VIC{

	CLEARSCREEN:{
			lda #16
			ldx #0
		!:
			sta VIC.SCREEN_RAM    ,x
			sta VIC.SCREEN_RAM+250,x
			sta VIC.SCREEN_RAM+500,x
			sta VIC.SCREEN_RAM+750,x
			inx
			cpx #250
			bne !-
			rts

	}

}