if exists("current_compiler")
    finish
endif

let current_compiler = "wftest"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

" Modified from pyunit, remove other lines from quickfix window
CompilerSet efm=%-C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m,%-G%.%#

"CompilerSet makeprg=python\ manage.py\ test\ $*\
CompilerSet makeprg=echo\ $*\ >/dev/null;\ nosetests
