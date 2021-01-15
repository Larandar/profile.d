for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exec 'noremap' key '<Nop>'
    exec 'noremap!' key '<Nop>'
endfor
