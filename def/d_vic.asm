#importonce

* = * "D_VIC"

.namespace VIC{
	.label SCREEN_RAM = $0400
	.label COLOR_RAM = $d800

	.label BORDER_COLOR = $d020
	.label BACKGROUND_COLOR = $d021
	
	.label RASTER = $d012
	.label RASTER_MSB = $d011

	.label MEMORY_SETUP_REGISTER = $d018
}