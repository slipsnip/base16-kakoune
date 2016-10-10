
##
## base16_colors.kak
##

%sh{
    ## http://chriskempson.com/projects/base16/
    ## default bg black
    base00='rgb:111111'
    ## lighter bg black
    base01='rgb:333333'
    ## selection bg black
    base02='rgb:555555'
    ## comments black
    base03='rgb:777777'
    ## dark fg grey
    base04='rgb:999999'
    ## default fg grey
    base05='rgb:bbbbbb'
    ## light fg grey
    base06='rgb:dddddd'
    ## light bg white
    base07='rgb:ffffff'
    ## red
    base08='rgb:ff4136'
    ## orange
    base09='rgb:ff851b'
    ## yellow
    base0A='rgb:ffdc00'
    ## green
    base0B='rgb:2ecc40'
    ## cyan
    base0C='rgb:7fdbff'
    ## blue
    base0D='rgb:0074d9'
    ## purple
    base0E='rgb:b10dc9'
    ## brown
    base0F='rgb:85144b'

    ## code
    echo "
        face value ${base09}+b
        face type ${base0A}
        face identifier ${base08}
        face string ${base0B}
        face error ${base05},${base0B}
        face keyword ${base0E}+b
        face operator ${base05}
        face attribute ${base09}
        face comment ${base03}
        face meta ${base0A}
    "

    ## markup
    echo "
        face title ${base0D}
        face header ${base0D}
        face bold ${base0A}
        face italic ${base09}
        face mono ${base0B}
        face block ${base09}
        face link ${base0D}
        face bullet ${base0B}
        face list ${base08}
    "

    ## builtin
    echo "
        face Default ${base05},${base01}
        face PrimarySelection white,blue
        face SecondarySelection black,blue
        face PrimaryCursor black,white
        face SecondaryCursor black,white
        face LineNumbers ${base05},${base01}
        face LineNumberCursor ${base05},rgb:282828+b
        face MenuForeground ${base05},blue
        face MenuBackground blue,${base05}
        face MenuInfo ${base0D}
        face Information ${base00},${base0D}
        face Error ${base05},${base0B}
        face StatusLine ${base05},${base02}
        face StatusLineMode ${base09}
        face StatusLineInfo ${base0D}
        face StatusLineValue ${base0B}
        face StatusCursor ${base02},${base0D}
        face Prompt ${base00},${base0D}
        face MatchingChar ${base0D},${base00}+b
        face BufferPadding ${base0D},${base01}
    "
}