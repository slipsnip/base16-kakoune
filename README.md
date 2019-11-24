# Fork of [base16-kakoune](https://github.com/Delapouite/base16-kakoune)

modified to adhere to new syntax for kak colorschemes.  
`set-face <scope> <name> <facespec>`
This is not a proper builder.  Converted to python script from javascript, stand-in untill I can write a proper base-16 builder for kakoune.

# [Base16](https://github.com/chriskempson/base16) colorschemes for [Kakoune](https://github.com/mawww/kakoune)

Colors definitions come from [base16-json](https://github.com/Delapouite/base16-json), the template is based on [base16.kak](https://github.com/mawww/kakoune/blob/master/colors/base16.kak).

# Usage

run `python build.py` to regenerate the content of `./colors`

# Install

Copy `./colors` to `$XDG_CONFIG_HOME/kak/`

Then, inside Kakoune, execute the `:colorscheme` command to choose the one you want.

## Licence MIT
