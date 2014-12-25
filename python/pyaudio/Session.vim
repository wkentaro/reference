let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplete_start_auto_complete) =neocomplete#mappings#popup_post()
inoremap <silent> <Plug>(neocomplete_start_omni_complete) 
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_quick_match) unite#sources#neocomplete#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_complete) unite#sources#neocomplete#start_complete()
inoremap <expr> <Nul> jedi#complete_string(0)
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#neosnippet#start_complete()
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_ :TComment
map! <D-v> *
nnoremap <silent> <expr>  quickrun#is_running() ? quickrun#sweep_sessions() : "\"
snoremap  a<BS>
nnoremap  h
nnoremap 	 i
vnoremap 	 i
nmap <NL> j
xmap  <Plug>(neosnippet_expand_target)
smap  <Plug>(neosnippet_expand_or_jump)
nnoremap  k
nnoremap  l
snoremap  a<BS>
noremap  :Unite -buffer-name=file file
noremap  :Unite buffer
nnoremap <silent>  :call repeat#wrap("\<C-R>",v:count)
noremap  :VimFiler -split -explorer
noremap  :Unite file_mru
vmap 9 <Plug>TComment_9
nmap 9 <Plug>TComment_9
omap 9 <Plug>TComment_9
vmap 8 <Plug>TComment_8
nmap 8 <Plug>TComment_8
omap 8 <Plug>TComment_8
vmap 7 <Plug>TComment_7
nmap 7 <Plug>TComment_7
omap 7 <Plug>TComment_7
vmap 6 <Plug>TComment_6
nmap 6 <Plug>TComment_6
omap 6 <Plug>TComment_6
vmap 5 <Plug>TComment_5
nmap 5 <Plug>TComment_5
omap 5 <Plug>TComment_5
vmap 4 <Plug>TComment_4
nmap 4 <Plug>TComment_4
omap 4 <Plug>TComment_4
vmap 3 <Plug>TComment_3
nmap 3 <Plug>TComment_3
omap 3 <Plug>TComment_3
vmap 2 <Plug>TComment_2
nmap 2 <Plug>TComment_2
omap 2 <Plug>TComment_2
vmap 1 <Plug>TComment_1
nmap 1 <Plug>TComment_1
omap 1 <Plug>TComment_1
map ca <Plug>TComment_ca
map cc <Plug>TComment_cc
map s <Plug>TComment_s
map n <Plug>TComment_n
map a <Plug>TComment_a
map b <Plug>TComment_b
map i <Plug>TComment_i
map r <Plug>TComment_r
map   <Plug>TComment_ 
map p <Plug>TComment_p
vmap  <Plug>TComment_
nmap  <Plug>TComment_
omap  <Plug>TComment_
map   :tabn
nnoremap # #zz
nnoremap * *zz
nnoremap <silent> ,ff :VimFiler
xnoremap <silent> ,ff :VimFiler
onoremap <silent> ,ff :VimFiler
nnoremap <silent> ,fd :VimFiler -split
xnoremap <silent> ,fd :VimFiler -split
onoremap <silent> ,fd :VimFiler -split
nmap <silent> ,w <Plug>(openbrowser-open)
nnoremap <silent> ,r :QuickRun
nnoremap <silent> ,is :ConqueTerm ipython
nnoremap <silent> ,ls :ConqueTerm bash
nnoremap <silent> . :call repeat#run(v:count)
nnoremap 0 $
xnoremap 0 $
nnoremap 1 0
xnoremap 1 0
nnoremap :uff :UniteWithBufferDir file -buffer-name=file
xnoremap :uff :UniteWithBufferDir file -buffer-name=file
onoremap :uff :UniteWithBufferDir file -buffer-name=file
xmap <silent> K <Plug>(ref-keyword)
nmap <silent> K <Plug>(ref-keyword)
nnoremap N Nzz
xmap S <Plug>VSurround
nnoremap <silent> U :call repeat#wrap('U',v:count)
nmap \r <Plug>(quickrun)
xmap \r <Plug>(quickrun)
omap \r <Plug>(quickrun)
nmap \_s <Plug>TComment_\_s
xmap \_s <Plug>TComment_\_s
omap \_s <Plug>TComment_\_s
nmap \_n <Plug>TComment_\_n
xmap \_n <Plug>TComment_\_n
omap \_n <Plug>TComment_\_n
nmap \_a <Plug>TComment_\_a
xmap \_a <Plug>TComment_\_a
omap \_a <Plug>TComment_\_a
nmap \_b <Plug>TComment_\_b
xmap \_b <Plug>TComment_\_b
omap \_b <Plug>TComment_\_b
nmap \_r <Plug>TComment_\_r
xmap \_r <Plug>TComment_\_r
omap \_r <Plug>TComment_\_r
xmap \_i <Plug>TComment_\_i
nmap \_  <Plug>TComment_\_ 
xmap \_  <Plug>TComment_\_ 
omap \_  <Plug>TComment_\_ 
nmap \_p <Plug>TComment_\_p
xmap \_p <Plug>TComment_\_p
omap \_p <Plug>TComment_\_p
xmap \__ <Plug>TComment_\__
nmap \__ <Plug>TComment_\__
omap \__ <Plug>TComment_\__
nmap <silent> \ig <Plug>IndentGuidesToggle
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
xmap gc <Plug>TComment_gc
nmap <silent> gcb <Plug>TComment_gcb
nmap <silent> gcc <Plug>TComment_gcc
nmap <silent> gc9c <Plug>TComment_gc9c
nmap <silent> gc9 <Plug>TComment_gc9
nmap <silent> gc8c <Plug>TComment_gc8c
nmap <silent> gc8 <Plug>TComment_gc8
nmap <silent> gc7c <Plug>TComment_gc7c
nmap <silent> gc7 <Plug>TComment_gc7
nmap <silent> gc6c <Plug>TComment_gc6c
nmap <silent> gc6 <Plug>TComment_gc6
nmap <silent> gc5c <Plug>TComment_gc5c
nmap <silent> gc5 <Plug>TComment_gc5
nmap <silent> gc4c <Plug>TComment_gc4c
nmap <silent> gc4 <Plug>TComment_gc4
nmap <silent> gc3c <Plug>TComment_gc3c
nmap <silent> gc3 <Plug>TComment_gc3
nmap <silent> gc2c <Plug>TComment_gc2c
nmap <silent> gc2 <Plug>TComment_gc2
nmap <silent> gc1c <Plug>TComment_gc1c
nmap <silent> gc1 <Plug>TComment_gc1
nmap <silent> gc <Plug>TComment_gc
xmap gS <Plug>VgSurround
nnoremap g# g#zz
nnoremap g* g*zz
omap ic <Plug>TComment_ic
xmap ic <Plug>TComment_ic
nnoremap n nzz
nnoremap <silent> u :call repeat#wrap('u',v:count)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <F8> :call conque_term#set_mappings("toggle")
nnoremap <silent> <F10> :call conque_term#send_file()
vnoremap <silent> <F9> :call conque_term#send_selected(visualmode())
snoremap <Del> a<BS>
snoremap <BS> a<BS>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
vnoremap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
vnoremap <silent> <Plug>(ref-keyword) :call ref#K('visual')
nnoremap <silent> <Plug>(ref-keyword) :call ref#K('normal')
xnoremap <silent> <Plug>(neosnippet_register_oneshot_snippet) :call neosnippet#mappings#_register_oneshot_snippet()
xnoremap <silent> <Plug>(neosnippet_expand_target) :call neosnippet#mappings#_expand_target()
xnoremap <silent> <Plug>(neosnippet_get_selected_text) :call neosnippet#helpers#get_selected_text(visualmode(), 1)
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
vnoremap <silent> <Plug>(openbrowser-smart-search) :call openbrowser#_keymapping_smart_search('v')
nnoremap <silent> <Plug>(openbrowser-smart-search) :call openbrowser#_keymapping_smart_search('n')
vnoremap <silent> <Plug>(openbrowser-search) :call openbrowser#_keymapping_search('v')
nnoremap <silent> <Plug>(openbrowser-search) :call openbrowser#_keymapping_search('n')
vnoremap <silent> <Plug>(openbrowser-open) :call openbrowser#_keymapping_open('v')
nnoremap <silent> <Plug>(openbrowser-open) :call openbrowser#_keymapping_open('n')
nnoremap <silent> <Plug>(vimfiler_simple) :VimFilerSimple
nnoremap <silent> <Plug>(vimfiler_create) :VimFilerCreate
nnoremap <silent> <Plug>(vimfiler_switch) :VimFiler
nnoremap <silent> <Plug>(vimfiler_split_create) :VimFilerSplit
nnoremap <silent> <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <silent> <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <silent> <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <silent> <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <silent> <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <silent> <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <silent> <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <silent> <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <silent> <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <silent> <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#TextObjectInlineComment()
xnoremap <silent> <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <silent> <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <silent> <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <silent> <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <silent> <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <silent> <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_\_s :TCommentAs =&ft_
noremap <Plug>TComment_\_n :TCommentAs =&ft 
noremap <Plug>TComment_\_a :TCommentAs 
noremap <Plug>TComment_\_b :TCommentBlock
noremap <Plug>TComment_\_r :TCommentRight
xnoremap <Plug>TComment_\_i :TCommentInline
noremap <Plug>TComment_\_  :TComment 
noremap <Plug>TComment_\_p vip:TComment
xnoremap <Plug>TComment_\__ :TCommentMaybeInline
nnoremap <Plug>TComment_\__ :TComment
snoremap <Plug>TComment_\__ :TComment
onoremap <Plug>TComment_\__ :TComment
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_ :TCommentMaybeInline
nnoremap <Plug>TComment_ :TComment
onoremap <Plug>TComment_ :TComment
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <F11> :call conque_term#exec_file()
vmap <C-3> <Plug>IMAP_JumpForward
nmap <C-3> <Plug>IMAP_JumpForward
map <S-Space> :tabp
nnoremap <S-Down> +
nnoremap <S-Up> -
nnoremap <S-Right> >
nnoremap <S-Left> <
xmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
inoremap  <Left><Insert>
inoremap  
inoremap <expr>  neocomplete#cancel_popup()
inoremap  <Right><Insert>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplete#undo_completion()
imap <expr> 	 neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": pumvisible() ? "\" : "\	"
imap <NL> <Plug>IMAP_JumpForward
imap  <Plug>(neosnippet_expand_or_jump)
inoremap  <Right>x<Insert>
imap  <Plug>Isurround
inoremap <expr>  neocomplete#close_popup()
imap 9 <Plug>TComment_9
imap 8 <Plug>TComment_8
imap 7 <Plug>TComment_7
imap 6 <Plug>TComment_6
imap 5 <Plug>TComment_5
imap 4 <Plug>TComment_4
imap 3 <Plug>TComment_3
imap 2 <Plug>TComment_2
imap 1 <Plug>TComment_1
imap s <Plug>TComment_s
imap n <Plug>TComment_n
imap a <Plug>TComment_a
imap b <Plug>TComment_b
imap i <Plug>TComment_i
imap r <Plug>TComment_r
imap   <Plug>TComment_ 
imap p <Plug>TComment_p
imap  <Plug>TComment_
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
inoremap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set binary
set cinoptions=:0,g0
set clipboard=unnamed
set commentstring=\ #\ %s
set completeopt=menuone
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set helplang=en
set hidden
set ignorecase
set incsearch
set infercase
set laststatus=2
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set matchpairs=(:),{:},[:],<:>
set matchtime=3
set modelines=4
set mouse=a
set ruler
set runtimepath=~/.vim,~/.vim/bundle/conque.vim/,~/.vim/bundle/ros.vim/,~/.vim/bundle/vim-swift/,~/.vim/bundle/vim-repeat/,~/.vim/bundle/vim-instant-markdown/,~/.vim/bundle/vim-indent-guides/,~/.vim/bundle/vim-surround/,~/.vim/bundle/tcomment_vim/,~/.vim/bundle/vimfiler.vim/,~/.vim/bundle/lightline.vim/,~/.vim/bundle/vim-fugitive/,~/.vim/bundle/open-browser.vim/,~/.vim/bundle/neocomplete.vim/,~/.vim/bundle/neomru.vim/,~/.vim/bundle/unite.vim/,~/.vim/bundle/neosnippet.vim/,~/.vim/bundle/neosnippet-snippets/,~/.vim/bundle/vim-ref/,~/.vim/bundle/vim-quickrun/,~/.vim/bundle/vim-template/,~/.vim/bundle/vim-colorschemes/,~/.vim/bundle/vim-latex/,~/.vim/bundle/python_fold.vim/,~/.vim/bundle/jedi-vim/,~/.vim/bundle/vimproc.vim/,~/.vim/bundle/.neobundle,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim74,/usr/local/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/neobundle.vim/,~/.vim/bundle/vim-instant-markdown//after,~/.vim/bundle/jedi-vim//after
set shiftround
set shiftwidth=4
set showmatch
set sidescroll=1
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set nostartofline
set noswapfile
set switchbuf=useopen
set tabline=%!lightline#tabline()
set tabstop=4
set virtualedit=all
set wildignore=*.pyc
set wildmenu
set nowrapscan
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Work/ref/python/pyaudio
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 print_wave_info.py
badd +0 ipython\ -\ 1
badd +8 bash\ -\ 2
badd +0 plot_wave_file.py
argglobal
silent! argdel *
argadd print_wave_info.py
set stal=2
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
file ipython\ -\ 1
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <End> :py ConqueTerm_1.write(u("\x1bOF"))
inoremap <buffer> <silent> <Home> :py ConqueTerm_1.write(u("\x1bOH"))
inoremap <buffer> <silent> <Left> :py ConqueTerm_1.write(u("\x1b[D"))
inoremap <buffer> <silent> <Right> :py ConqueTerm_1.write(u("\x1b[C"))
inoremap <buffer> <silent> <Down> :py ConqueTerm_1.write(u("\x1b[B"))
inoremap <buffer> <silent> <Up> :py ConqueTerm_1.write(u("\x1b[A"))
inoremap <buffer> <silent> <S-Space> :py ConqueTerm_1.write(u(" "))
inoremap <buffer> <silent> <S-BS> :py ConqueTerm_1.write(u("\x08"))
inoremap <buffer> <silent> <BS> :py ConqueTerm_1.write(u("\x08"))
nnoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(3)
nnoremap <buffer> <silent> C :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> P :py ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> R :echo "Replace mode disabled in shell."
nnoremap <buffer> <silent> S :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> [p :py ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> ]p :py ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> c :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> p :py ConqueTerm_1.write_expr("@@")a
nnoremap <buffer> <silent> r :echo "Replace mode disabled in shell."
nnoremap <buffer> <silent> s :echo "Change mode disabled in shell."
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(1)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(2)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(3)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(4)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(5)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(6)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(7)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(8)
inoremap <buffer> <silent> 	 :py ConqueTerm_1.write_ord(9)
inoremap <buffer> <silent> <NL> :py ConqueTerm_1.write_ord(10)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(11)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(12)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(13)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(14)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(15)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(16)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(17)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(18)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(19)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(20)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(21)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(22)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(23)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(24)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(25)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(26)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(27)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(28)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(29)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(30)
inoremap <buffer> <silent>  :py ConqueTerm_1.write_ord(31)
inoremap <buffer> <silent>   :py ConqueTerm_1.write(u(" "))
inoremap <buffer> <silent> ! :py ConqueTerm_1.write_ord(33)
inoremap <buffer> <silent> " :py ConqueTerm_1.write_ord(34)
inoremap <buffer> <silent> # :py ConqueTerm_1.write_ord(35)
inoremap <buffer> <silent> $ :py ConqueTerm_1.write_ord(36)
inoremap <buffer> <silent> % :py ConqueTerm_1.write_ord(37)
inoremap <buffer> <silent> & :py ConqueTerm_1.write_ord(38)
inoremap <buffer> <silent> ' :py ConqueTerm_1.write_ord(39)
inoremap <buffer> <silent> ( :py ConqueTerm_1.write_ord(40)
inoremap <buffer> <silent> ) :py ConqueTerm_1.write_ord(41)
inoremap <buffer> <silent> * :py ConqueTerm_1.write_ord(42)
inoremap <buffer> <silent> + :py ConqueTerm_1.write_ord(43)
inoremap <buffer> <silent> , :py ConqueTerm_1.write_ord(44)
inoremap <buffer> <silent> - :py ConqueTerm_1.write_ord(45)
inoremap <buffer> <silent> . :py ConqueTerm_1.write_ord(46)
inoremap <buffer> <silent> / :py ConqueTerm_1.write_ord(47)
inoremap <buffer> <silent> 0 :py ConqueTerm_1.write_ord(48)
inoremap <buffer> <silent> 1 :py ConqueTerm_1.write_ord(49)
inoremap <buffer> <silent> 2 :py ConqueTerm_1.write_ord(50)
inoremap <buffer> <silent> 3 :py ConqueTerm_1.write_ord(51)
inoremap <buffer> <silent> 4 :py ConqueTerm_1.write_ord(52)
inoremap <buffer> <silent> 5 :py ConqueTerm_1.write_ord(53)
inoremap <buffer> <silent> 6 :py ConqueTerm_1.write_ord(54)
inoremap <buffer> <silent> 7 :py ConqueTerm_1.write_ord(55)
inoremap <buffer> <silent> 8 :py ConqueTerm_1.write_ord(56)
inoremap <buffer> <silent> 9 :py ConqueTerm_1.write_ord(57)
inoremap <buffer> <silent> : :py ConqueTerm_1.write_ord(58)
inoremap <buffer> <silent> ; :py ConqueTerm_1.write_ord(59)
inoremap <buffer> <silent> < :py ConqueTerm_1.write_ord(60)
inoremap <buffer> <silent> = :py ConqueTerm_1.write_ord(61)
inoremap <buffer> <silent> > :py ConqueTerm_1.write_ord(62)
inoremap <buffer> <silent> ? :py ConqueTerm_1.write_ord(63)
inoremap <buffer> <silent> @ :py ConqueTerm_1.write_ord(64)
inoremap <buffer> <silent> A :py ConqueTerm_1.write_ord(65)
inoremap <buffer> <silent> B :py ConqueTerm_1.write_ord(66)
inoremap <buffer> <silent> C :py ConqueTerm_1.write_ord(67)
inoremap <buffer> <silent> D :py ConqueTerm_1.write_ord(68)
inoremap <buffer> <silent> E :py ConqueTerm_1.write_ord(69)
inoremap <buffer> <silent> F :py ConqueTerm_1.write_ord(70)
inoremap <buffer> <silent> G :py ConqueTerm_1.write_ord(71)
inoremap <buffer> <silent> H :py ConqueTerm_1.write_ord(72)
inoremap <buffer> <silent> I :py ConqueTerm_1.write_ord(73)
inoremap <buffer> <silent> J :py ConqueTerm_1.write_ord(74)
inoremap <buffer> <silent> K :py ConqueTerm_1.write_ord(75)
inoremap <buffer> <silent> L :py ConqueTerm_1.write_ord(76)
inoremap <buffer> <silent> M :py ConqueTerm_1.write_ord(77)
inoremap <buffer> <silent> N :py ConqueTerm_1.write_ord(78)
inoremap <buffer> <silent> O :py ConqueTerm_1.write_ord(79)
inoremap <buffer> <silent> P :py ConqueTerm_1.write_ord(80)
inoremap <buffer> <silent> Q :py ConqueTerm_1.write_ord(81)
inoremap <buffer> <silent> R :py ConqueTerm_1.write_ord(82)
inoremap <buffer> <silent> S :py ConqueTerm_1.write_ord(83)
inoremap <buffer> <silent> T :py ConqueTerm_1.write_ord(84)
inoremap <buffer> <silent> U :py ConqueTerm_1.write_ord(85)
inoremap <buffer> <silent> V :py ConqueTerm_1.write_ord(86)
inoremap <buffer> <silent> W :py ConqueTerm_1.write_ord(87)
inoremap <buffer> <silent> X :py ConqueTerm_1.write_ord(88)
inoremap <buffer> <silent> Y :py ConqueTerm_1.write_ord(89)
inoremap <buffer> <silent> Z :py ConqueTerm_1.write_ord(90)
inoremap <buffer> <silent> [ :py ConqueTerm_1.write_ord(91)
inoremap <buffer> <silent> \ :py ConqueTerm_1.write_ord(92)
inoremap <buffer> <silent> ] :py ConqueTerm_1.write_ord(93)
inoremap <buffer> <silent> ^ :py ConqueTerm_1.write_ord(94)
inoremap <buffer> <silent> _ :py ConqueTerm_1.write_ord(95)
inoremap <buffer> <silent> ` :py ConqueTerm_1.write_ord(96)
inoremap <buffer> <silent> a :py ConqueTerm_1.write_ord(97)
inoremap <buffer> <silent> b :py ConqueTerm_1.write_ord(98)
inoremap <buffer> <silent> c :py ConqueTerm_1.write_ord(99)
inoremap <buffer> <silent> d :py ConqueTerm_1.write_ord(100)
inoremap <buffer> <silent> e :py ConqueTerm_1.write_ord(101)
inoremap <buffer> <silent> f :py ConqueTerm_1.write_ord(102)
inoremap <buffer> <silent> g :py ConqueTerm_1.write_ord(103)
inoremap <buffer> <silent> h :py ConqueTerm_1.write_ord(104)
inoremap <buffer> <silent> i :py ConqueTerm_1.write_ord(105)
inoremap <buffer> <silent> j :py ConqueTerm_1.write_ord(106)
inoremap <buffer> <silent> k :py ConqueTerm_1.write_ord(107)
inoremap <buffer> <silent> l :py ConqueTerm_1.write_ord(108)
inoremap <buffer> <silent> m :py ConqueTerm_1.write_ord(109)
inoremap <buffer> <silent> n :py ConqueTerm_1.write_ord(110)
inoremap <buffer> <silent> o :py ConqueTerm_1.write_ord(111)
inoremap <buffer> <silent> p :py ConqueTerm_1.write_ord(112)
inoremap <buffer> <silent> q :py ConqueTerm_1.write_ord(113)
inoremap <buffer> <silent> r :py ConqueTerm_1.write_ord(114)
inoremap <buffer> <silent> s :py ConqueTerm_1.write_ord(115)
inoremap <buffer> <silent> t :py ConqueTerm_1.write_ord(116)
inoremap <buffer> <silent> u :py ConqueTerm_1.write_ord(117)
inoremap <buffer> <silent> v :py ConqueTerm_1.write_ord(118)
inoremap <buffer> <silent> w :py ConqueTerm_1.write_ord(119)
inoremap <buffer> <silent> x :py ConqueTerm_1.write_ord(120)
inoremap <buffer> <silent> y :py ConqueTerm_1.write_ord(121)
inoremap <buffer> <silent> z :py ConqueTerm_1.write_ord(122)
inoremap <buffer> <silent> { :py ConqueTerm_1.write_ord(123)
inoremap <buffer> <silent> | :py ConqueTerm_1.write_ord(124)
inoremap <buffer> <silent> } :py ConqueTerm_1.write_ord(125)
inoremap <buffer> <silent> ~ :py ConqueTerm_1.write_ord(126)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal buflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,g0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=\ #\ %s
setlocal complete=.,w,b,u,t,i
set concealcursor=i
setlocal concealcursor=nic
set conceallevel=2
setlocal conceallevel=3
setlocal completefunc=neocomplete#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'conque_term'
setlocal filetype=conque_term
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\"))+(!!strlen(exists(\"*anzu#search_status\")?anzu#search_status():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%{(!!strlen(exists(\"*MyFilename\")?MyFilename():\"\"))*((!!strlen(exists(\"*anzu#search_status\")?anzu#search_status():\"\")))?('|'):''}%(\ %{exists(\"*anzu#search_status\")?anzu#search_status():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ \ %3l:%-2v\ %)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'conque_term'
setlocal syntax=conque_term
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~/Work/ref/python/pyaudio
tabedit ~/Work/ref/python/pyaudio/plot_wave_file.py
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <C-Space> jedi#complete_string(0)
nnoremap <buffer> <silent> K :call jedi#show_documentation()
nnoremap <buffer> \r :call jedi#rename()
nnoremap <buffer> \n :call jedi#usages()
nnoremap <buffer> \d :call jedi#goto_definitions()
nnoremap <buffer> \g :call jedi#goto_assignments()
inoremap <buffer> <silent> . .=jedi#complete_string(1)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=:0,g0
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
set concealcursor=i
setlocal concealcursor=i
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=neocomplete#complete#auto_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal infercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=jedi#completions
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightLineLeft_active_0#%(\ %{exists(\"*MyMode\")?MyMode():\"\"}\ %)%{(!!strlen(exists(\"*MyMode\")?MyMode():\"\"))*((&paste))?('|'):''}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(\ %{exists(\"*MyFugitive\")?MyFugitive():\"\"}\ %)%{(!!strlen(exists(\"*MyFugitive\")?MyFugitive():\"\"))*((!!strlen(exists(\"*MyFilename\")?MyFilename():\"\"))+(!!strlen(exists(\"*anzu#search_status\")?anzu#search_status():\"\")))?('|'):''}%(\ %{exists(\"*MyFilename\")?MyFilename():\"\"}\ %)%{(!!strlen(exists(\"*MyFilename\")?MyFilename():\"\"))*((!!strlen(exists(\"*anzu#search_status\")?anzu#search_status():\"\")))?('|'):''}%(\ %{exists(\"*anzu#search_status\")?anzu#search_status():\"\"}\ %)%#LightLineLeft_active_1_2#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#%#LightLineRight_active_2#%(\ %{exists(\"*MyFileformat\")?MyFileformat():\"\"}\ %)%{(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\")))?('|'):''}%(\ %{exists(\"*MyFileencoding\")?MyFileencoding():\"\"}\ %)%{(!!strlen(exists(\"*MyFiletype\")?MyFiletype():\"\"))*((!!strlen(exists(\"*MyFileformat\")?MyFileformat():\"\"))+(!!strlen(exists(\"*MyFileencoding\")?MyFileencoding():\"\")))?('|'):''}%(\ %{exists(\"*MyFiletype\")?MyFiletype():\"\"}\ %)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(\ %3p%%\ %)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%(\ \ %3l:%-2v\ %)
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
11,15fold
let s:l = 15 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 014|
tabnext 2
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
