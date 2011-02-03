" Plugin:       twvim
" Version:      0.1
" Author:       Thiago Avelino <avelino.th@gmail.com>
" License:      New BSD
"
" Usage:
" Just put twvim.vim and twvim.py in your ~/.vim/plugin
" You have to set your twitters username/password
"   :let g:twvimuser=""
"   :let g:twvimpass=""
"
" type:
"   :twvimUp <status>   To update your status
"   :TwvimPTimeline          To get the public timeline
"   :TwvimFTimeline         To get your friends timeline
"
" Changelog:
"  0.1
"   - Supports:
"       Updating your status
"       Getting Public timeline
"       Getting your friends timeline
"
pyfile ~/.vim/plugin/twvim.py

if &compatible || v:version < 603
    finish
endif

if !exists("g:twitterusername")
    let g:twitterusername=""
endif

if !exists("g:twitterpassword")
    let g:twitterpassword=""
endif

command!    -nargs=1    TwvimUp          python  Update(<q-args>)
command!    -nargs=0    TwvimPTimeline   python  Timeline('public')
command!    -nargs=0    TwvimFTimeline   python  Timeline('friends')
