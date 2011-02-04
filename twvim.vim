" Plugin:       twvim
" Version:      0.1
" Author:       Thiago Avelino <avelino.th@gmail.com>
" License:      New BSD
"
" Login in Twitter
"   :let g:twvimuser=""
"   :let g:twvimpass=""
"
" type:
"   :TwvUp <status>   Send twitter
"   :TwvP             To get public timeline
"   :TwvF             To get friends timeline

pyfile ~/.vim/plugin/twvim.py

if &compatible || v:version < 603
    finish
endif

if !exists("g:twvimuser")
    let g:twvimuser=""
endif

if !exists("g:twvimpass")
    let g:twvimpass=""
endif

command!    -nargs=1    TwvUp                 python  Update(<q-args>)
command!    -nargs=0    TwvP                  python  Timeline('public')
command!    -nargs=0    TwvF                  python  Timeline('friends')
