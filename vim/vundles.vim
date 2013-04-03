let g:run_with_vimux=1
Bundle 'elentok/mailr.vim'
Bundle 'elentok/run.vim'
Bundle 'elentok/plaintasks.vim'
Bundle 'elentok/alternate-spec.vim'
" Bundle 'elentok/supertagger'
" map <f8> :SuperTagger<cr>

Bundle 'elentok/spec-runner.vim'
let g:spec_runner_use_vimux=1
let g:user_spec_runners = {
  \ 'rspec': { 'command': 'sp {file}' },
  \ 'java': { 'command': 'make test' }
  \}

let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"
Bundle 'benmills/vimux'
