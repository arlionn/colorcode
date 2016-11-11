{smcl}
{right:version 1.0.0}
{title:Title}

{phang}
{cmd:colorcode} {hline 2} returns the RGB, CMYK, and HSV code for Stata color names 

{title:Syntax}

{p 8 16 2}
{cmd: colorcode} {it:colorname}
{p_end}


{title:Description}

{p 4 4 2}
{bf:colorcode} returns the RGB, CMYK, or HSV code for Stata color names. 


{title:Example(s)}

    get the rgb code of "blue"
        . colorcode blue

    get the rgb of light blue
        . colorcode ltblue


{title:Stored results}

{p 4 4 2}
for each given color name, {bf:colorcode} stores the following macros:

{p 4 4 2}
{bf:r(rgb)} stores the RGB code    {break}
{bf:r(hsv)} stores the HSV code    {break}
{bf:r(cmyk)} stores the CMYK code 


{title:Author}

{p 4 4 2}
E. F. Haghish     {break}
IMBI, University of Freiburg, Germany    {break}
haghish@imbi.uni-freiburg.de 

    {hline}

{p 4 4 2}
This help file was dynamically produced by 
{browse "http://www.haghish.com/markdoc/":MarkDoc Literate Programming package} 

