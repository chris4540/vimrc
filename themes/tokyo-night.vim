let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
try
    set termguicolors
    set t_Co=256
    colorscheme tokyonight
catch
endtry
