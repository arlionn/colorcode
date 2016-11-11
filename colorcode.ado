/*** DO NOT EDIT THIS LINE -----------------------------------------------------
Version: 1.0.0
Title: colorcode
Description: returns the RGB, CMYK, and HSV code for Stata color names 
----------------------------------------------------- DO NOT EDIT THIS LINE ***/


/***
Syntax
======

{p 8 16 2}
{cmd: colorcode} {it:colorname}
{p_end}

Description
===========

__colorcode__ returns the RGB, CMYK, or HSV code for Stata color names. 

Example(s)
=================

    get the rgb code of "blue"
        . colorcode blue

    get the rgb of light blue
        . colorcode ltblue

Stored results
=================

for each given color name, __colorcode__ stores the following macros:

__r(rgb)__ stores the RGB code  
__r(hsv)__ stores the HSV code  
__r(cmyk)__ stores the CMYK code 

Author
======

E. F. Haghish   
IMBI, University of Freiburg, Germany  
haghish@imbi.uni-freiburg.de 

- - -

This help file was dynamically produced by 
[MarkDoc Literate Programming package](http://www.haghish.com/markdoc/) 
***/

*cap prog drop colorcode
program colorcode , rclass
	
	version 11
	syntax [anything] 
	
	tokenize `anything'
	
	
	
	
	// RGB Colors
	// -------------------------------------------------------------------------
		if "`1'" == "black"         local rgb 0 0 0
		else if "`1'" == "blue"          local rgb 0 0 255
		else if "`1'" == "bluishgray"    local rgb 217 230 235
		else if "`1'" == "bluishgray8"   local rgb 210 215 228
		else if "`1'" == "brown"         local rgb 156 136 71
		else if "`1'" == "chocolate"     local rgb 128  64   0
		else if "`1'" == "cranberry"     local rgb 193 5 52
		else if "`1'" == "cyan"          local rgb 0 255 255
		else if "`1'" == "dimgray"       local rgb 232 232 232
		else if "`1'" == "dkgreen"       local rgb 0 96 0
		else if "`1'" == "dknavy"        local rgb 30 45 83
		else if "`1'" == "dkorange"      local rgb 227 126 0
		else if "`1'" == "ebblue"        local rgb 0 139 188
		else if "`1'" == "ebg"           local rgb 198 211 223
		else if "`1'" == "edkbg"         local rgb 178 191 203
		else if "`1'" == "edkblue"       local rgb 62 100 125
		else if "`1'" == "eggshell"      local rgb 255 251 240
		else if "`1'" == "eltblue"       local rgb 130 192 233
		else if "`1'" == "eltgreen"      local rgb 151 182 176
		else if "`1'" == "emerald"       local rgb 45 109 102
		else if "`1'" == "emidblue"      local rgb 123 146 168
		else if "`1'" == "erose"         local rgb 191 161 156
		else if "`1'" == "forest_green"  local rgb 85 117 47
		else if "`1'" == "gold"          local rgb 255 210 0
		else if "`1'" == "gray"          local rgb 128 128 128
		else if "`1'" == "green"         local rgb 0 128 0
		else if "`1'" == "gs0"           local rgb 0 0 0
		else if "`1'" == "gs1"           local rgb 16 16 16
		else if "`1'" == "gs10"          local rgb 160 160 160
		else if "`1'" == "gs11"          local rgb 176 176 176
		else if "`1'" == "gs12"          local rgb 192 192 192
		else if "`1'" == "gs13"          local rgb 208 208 208
		else if "`1'" == "gs14"          local rgb 224 224 224
		else if "`1'" == "gs15"          local rgb 240 240 240
		else if "`1'" == "gs16"          local rgb 255 255 255
		else if "`1'" == "gs2"           local rgb 32 32 32
		else if "`1'" == "gs3"           local rgb 48 48 48
		else if "`1'" == "gs4"           local rgb 64 64 64
		else if "`1'" == "gs5"           local rgb 80 80 80
		else if "`1'" == "gs6"     	    local rgb 96 96 96
		else if "`1'" == "gs7"   	    local rgb 112 112 112
		else if "`1'" == "gs8"    	    local rgb 128 128 128
		else if "`1'" == "gs9"     	    local rgb 144 144 144
		else if "`1'" == "khaki"         local rgb 202 194 126
		else if "`1'" == "lavender"      local rgb 147 141 210
		else if "`1'" == "lime"          local rgb 0 255 0
		else if "`1'" == "ltblue"        local rgb 173 216 230
		else if "`1'" == "ltbluishgray"  local rgb 234 242 243
		else if "`1'" == "ltbluishgray8" local rgb 225 230 240
		else if "`1'" == "ltkhaki"       local rgb 229 218 165
		else if "`1'" == "magenta"       local rgb 255 0 255
		else if "`1'" == "maroon"        local rgb 144 53 59
		else if "`1'" == "midblue"       local rgb 0 128 255
		else if "`1'" == "midgreen"      local rgb 0 176 0
		else if "`1'" == "mint"          local rgb 0 255 128
		else if "`1'" == "navy"          local rgb 26 71 111
		else if "`1'" == "navy8"         local rgb 39 63 111
		else if "`1'" == "none"          local rgb 0 0 0 
		else if "`1'" == "olive"         local rgb 92 71 23
		else if "`1'" == "olive_teal"    local rgb 192 220 192
		else if "`1'" == "orange"        local rgb 255 127 0
		else if "`1'" == "orange_red"    local rgb 255 69 0
		else if "`1'" == "pink"          local rgb 255 0 128
		else if "`1'" == "purple"        local rgb 128 0 128
		else if "`1'" == "red"           local rgb 255 0 0
		else if "`1'" == "sand"     	    local rgb 217 194 99
		else if "`1'" == "sandb"      	local rgb 255 228 116
		else if "`1'" == "sienna"      	local rgb 160 82 45
		else if "`1'" == "stone"         local rgb 215 210 158
		else if "`1'" == "sunflowerlime" local rgb 234 255 170
		else if "`1'" == "teal"          local rgb 110 142 132
		else if "`1'" == "white"         local rgb 255 255 255
		else if "`1'" == "yellow"        local rgb 255 255 0
		
		// check for input (only once)
		else {
			di as err "color {bf:`anything'} is not defined"
			err 198
		}
		
	// HSV Colors
	// -------------------------------------------------------------------------
		if "`1'" == "black"         local hsv 0 0 0
		if "`1'" == "blue"          local hsv 240 1.00 1.00
		if "`1'" == "bluishgray"    local hsv 197 .08 .92
		if "`1'" == "bluishgray8"   local hsv 223 .08 .89
		if "`1'" == "brown"         local hsv 46  .54 .61
		if "`1'" == "chocolate"     local hsv 30 1.00 .50
		if "`1'" == "cranberry"     local hsv 345 .97 .76
		if "`1'" == "cyan"          local hsv 180 1.00 1.00
		if "`1'" == "dimgray"       local hsv 0 0 .91
		if "`1'" == "dkgreen"       local hsv 120 1.00 .38
		if "`1'" == "dknavy"        local hsv 223 .64 .33
		if "`1'" == "dkorange"      local hsv 33 1.00 .89
		if "`1'" == "ebblue"        local hsv 196 1.00 .74
		if "`1'" == "ebg"           local hsv 209 .11 .87
		if "`1'" == "edkbg"         local hsv 209 .12 .80
		if "`1'" == "edkblue"       local hsv 204 .50 .49
		if "`1'" == "eggshell"      local hsv 44  .06 1.00
		if "`1'" == "eltblue"       local hsv 204	.44	.91
		if "`1'" == "eltgreen"      local hsv 168	.17	.71
		if "`1'" == "emerald"       local hsv 173	.59	.43
		if "`1'" == "emidblue"      local hsv 209	.27	.66
		if "`1'" == "erose"         local hsv 9	.18	.75
		if "`1'" == "forest_green"  local hsv 87	.60	.46
		if "`1'" == "gold"          local hsv 49	1.00	1.00
		if "`1'" == "gray"          local hsv 0	0	.50
		if "`1'" == "green"         local hsv 120	1.00	.50
		if "`1'" == "gs0"           local hsv 0 0 0
		if "`1'" == "gs1"           local hsv 0	0	.06
		if "`1'" == "gs10"          local hsv 0	0	.63
		if "`1'" == "gs11"          local hsv 0	0	.69
		if "`1'" == "gs12"          local hsv 0	0	.75
		if "`1'" == "gs13"          local hsv 0	0	.82
		if "`1'" == "gs14"          local hsv 0	0	.88
		if "`1'" == "gs15"          local hsv 0	0	.94
		if "`1'" == "gs16"          local hsv 0	0	1.00
		if "`1'" == "gs2"           local hsv 0	0	.13
		if "`1'" == "gs3"           local hsv 0	0	.19
		if "`1'" == "gs4"           local hsv 0	0	.25
		if "`1'" == "gs5"           local hsv 0	0	.31
		if "`1'" == "gs6"     	    local hsv 0	0	.38
		if "`1'" == "gs7"   	    local hsv 0	0	.44
		if "`1'" == "gs8"    	    local hsv 0	0	.50
		if "`1'" == "gs9"     	    local hsv 0	0	.56
		if "`1'" == "khaki"         local hsv 54	.38	.79
		if "`1'" == "lavender"      local hsv 245	.33	.82
		if "`1'" == "lime"          local hsv 120	1.00	1.00
		if "`1'" == "ltblue"        local hsv 195	.25	.90
		if "`1'" == "ltbluishgray"  local hsv 187	.04	.95
		if "`1'" == "ltbluishgray8" local hsv 220	.06	.94
		if "`1'" == "ltkhaki"       local hsv 50	.28	.90
		if "`1'" == "magenta"       local hsv 300	1.00	1.00
		if "`1'" == "maroon"        local hsv 356	.63	.56
		if "`1'" == "midblue"       local hsv 210	1.00	1.00
		if "`1'" == "midgreen"      local hsv 120	1.00	.69
		if "`1'" == "mint"          local hsv 150	1.00	1.00
		if "`1'" == "navy"          local hsv 208	.77	.44
		if "`1'" == "navy8"         local hsv 220	.65	.44
		if "`1'" == "none"          local hsv 0 0 0 
		if "`1'" == "olive"         local hsv 42	.75	.36
		if "`1'" == "olive_teal"    local hsv 120	.13	.86
		if "`1'" == "orange"        local hsv 30	1.00	1.00
		if "`1'" == "orange_red"    local hsv 16	1.00	1.00
		if "`1'" == "pink"          local hsv 300	1.00	1.00
		if "`1'" == "purple"        local hsv 300	1.00	.50
		if "`1'" == "red"           local hsv 0	1.00	1.00
		if "`1'" == "sand"     	    local hsv 48	.54	.85
		if "`1'" == "sandb"      	local hsv 48	.55	1.00
		if "`1'" == "sienna"      	local hsv 19	.82	.45
		if "`1'" == "stone"         local hsv 55	.27	.84
		if "`1'" == "sunflowerlime" local hsv 75	.33	.100
		if "`1'" == "teal"          local hsv 161	.23	.56
		if "`1'" == "white"         local hsv 0	0	1.00
		if "`1'" == "yellow"        local hsv 60	1.00	1.00

	
	// CMYK Colors
	// -------------------------------------------------------------------------
		if "`1'" == "black"         local cmyk 0 0 0 255
		if "`1'" == "blue"          local cmyk 255 255 0 0
		if "`1'" == "bluishgray"    local cmyk 18 5 0 20
		if "`1'" == "bluishgray8"   local cmyk 18 13 0 27
		if "`1'" == "brown"         local cmyk 0 20 85 99
		if "`1'" == "chocolate"     local cmyk 0 64 128 127
		if "`1'" == "cranberry"     local cmyk 0 188 141 62
		if "`1'" == "cyan"          local cmyk 255 0 0 0
		if "`1'" == "dimgray"       local cmyk 0 0 0 23
		if "`1'" == "dkgreen"       local cmyk 96 0 96 159
		if "`1'" == "dknavy"        local cmyk 53 38 0 172
		if "`1'" == "dkorange"      local cmyk 0 101 227 28
		if "`1'" == "ebblue"        local cmyk 188 49 0 67
		if "`1'" == "ebg"           local cmyk 25 12 0 32
		if "`1'" == "edkbg"         local cmyk 25 12 0 52
		if "`1'" == "edkblue"       local cmyk 63 25 0 130
		if "`1'" == "eggshell"      local cmyk 0 4 15 0
		if "`1'" == "eltblue"       local cmyk 103 41 0 22
		if "`1'" == "eltgreen"      local cmyk 31 0 6 73
		if "`1'" == "emerald"       local cmyk 64 0 7 146
		if "`1'" == "emidblue"      local cmyk 45 22 0 87
		if "`1'" == "erose"         local cmyk 0 30 35 64
		if "`1'" == "forest_green"  local cmyk 32 0 70 138
		if "`1'" == "gold"          local cmyk 0 45 255 0
		if "`1'" == "gray"          local cmyk 0 0 0 127
		if "`1'" == "green"         local cmyk 128 0 128 127
		if "`1'" == "gs0"           local cmyk 0 0 0 255
		if "`1'" == "gs1"           local cmyk 0 0 0 239
		if "`1'" == "gs10"          local cmyk 0 0 0 95
		if "`1'" == "gs11"          local cmyk 0 0 0 79
		if "`1'" == "gs12"          local cmyk 0 0 0 63
		if "`1'" == "gs13"          local cmyk 0 0 0 47
		if "`1'" == "gs14"          local cmyk 0 0 0 31
		if "`1'" == "gs15"          local cmyk 0 0 0 15
		if "`1'" == "gs16"          local cmyk 0 0 0 0
		if "`1'" == "gs2"           local cmyk 0 0 0 223
		if "`1'" == "gs3"           local cmyk 0 0 0 207
		if "`1'" == "gs4"           local cmyk 0 0 0 191
		if "`1'" == "gs5"           local cmyk 0 0 0 175
		if "`1'" == "gs6"     	    local cmyk 0 0 0 159
		if "`1'" == "gs7"   	    local cmyk 0 0 0 143
		if "`1'" == "gs8"    	    local cmyk 0 0 0 127
		if "`1'" == "gs9"     	    local cmyk 0 0 0 111
		if "`1'" == "khaki"         local cmyk 0 8 76 53
		if "`1'" == "lavender"      local cmyk 63 69 0 45
		if "`1'" == "lime"          local cmyk 255 0 255 0
		if "`1'" == "ltblue"        local cmyk 57 14 0 25
		if "`1'" == "ltbluishgray"  local cmyk 9 1 0 12
		if "`1'" == "ltbluishgray8" local cmyk 15 10 0 15
		if "`1'" == "ltkhaki"       local cmyk 229 218 165
		if "`1'" == "magenta"       local cmyk 0 11 64 26
		if "`1'" == "maroon"        local cmyk 0 91 85 111
		if "`1'" == "midblue"       local cmyk 255 127 0 0
		if "`1'" == "midgreen"      local cmyk 176 0 176 79
		if "`1'" == "mint"          local cmyk 255 0 127 0
		if "`1'" == "navy"          local cmyk 85 40 0 144
		if "`1'" == "navy8"         local cmyk 72 48 0 144
		if "`1'" == "none"          local cmyk 0 0 0 255
		if "`1'" == "olive"         local cmyk 0 21 69 163
		if "`1'" == "olive_teal"    local cmyk 28 0 28 35
		if "`1'" == "orange"        local cmyk 0 128 255 0
		if "`1'" == "orange_red"    local cmyk 0 186 255 0
		if "`1'" == "pink"          local cmyk 0 255 127 0
		if "`1'" == "purple"        local cmyk 0 128 0 127
		if "`1'" == "red"           local cmyk 0 255 255 0
		if "`1'" == "sand"     	    local cmyk 0 23 118 38
		if "`1'" == "sandb"      	local cmyk 0 27 139 0
		if "`1'" == "sienna"      	local cmyk 0 78 115 95
		if "`1'" == "stone"         local cmyk 0 5 57 40
		if "`1'" == "sunflowerlime" local cmyk 21 0 85 0
		if "`1'" == "teal"          local cmyk 32 0 10 113
		if "`1'" == "white"         local cmyk 0 0 0 0
		if "`1'" == "yellow"        local cmyk 0 0 255 0

	display as txt "rgb  {bf:`rgb'}"
	display as txt "hsv  {bf:`hsv'}"
	display as txt "cmyk {bf:`cmyk'}"
	
	return local cmyk	`cmyk'
	return local hsv	`hsv'
	return local rgb	`rgb'
	
end

*markdoc colorcode.ado, exp(sthlp) replace
