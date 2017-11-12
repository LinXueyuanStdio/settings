function! SpaceVim#layers#core#plugins() abort
    return [
                \ ['Shougo/vimproc.vim', {'build' : ['make']}],
                \ ['benizi/vim-automkdir'],
                \ ['airblade/vim-rooter', {'merged' : 0}],
                \ ]
endfunction

function! SpaceVim#layers#core#config() abort
    let g:rooter_silent_chdir = 1
    call SpaceVim#layers#load('core#banner')
    call SpaceVim#layers#load('core#statusline')
    call SpaceVim#layers#load('core#tabline')
    call SpaceVim#mapping#space#def('nnoremap', ['p', 't'], 'Rooter', 'find-project-root', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['p', 'k'], 'call SpaceVim#plugins#projectmanager#kill_project()', 'kill all project buffers', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['p', 'f'], 'CtrlP', 'find files in current project', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['p', '/'], 'Grepper', 'fuzzy search for text in current project', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['q', 'q'], 'qa', 'prompt-kill-vim', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['q', 'Q'], 'qa!', 'kill-vim', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['q', 'R'], '', 'restart-vim(TODO)', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['q', 'r'], '', 'restart-vim-resume-layouts(TODO)', 1)
    call SpaceVim#mapping#space#def('nnoremap', ['q', 't'], 'tabclose!', 'kill current tab', 1)
endfunction
