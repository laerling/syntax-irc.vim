" Vim syntax file
" Language:		IRC Log
" ----------------------------------------------------------------------------

" quit when a syntax file was already loaded
if exists("b:current_syntax")
	finish
endif

syn match	txtDate		"\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d"
syn match txtName		"\t[A-Za-z0-9\-]*[ \t]"

syn match	dialogJoin		"-->\t[0-9A-Za-z\-]* (.*@.*) has joined #[0-9A-Za-z]*"
syn match	dialogLeft		"<--\t[0-9A-Za-z\-]* (.*@.*) has quit (.*)"
syn match	dialogNotice		"--\tNotice([0-9A-Za-z\-].*):.*"

hi def link txtDate		Constant
hi def link txtName		Identifier

hi def link dialogJoin		Comment
hi def link dialogLeft		Comment
hi def link dialogNotice	Statement

let b:current_syntax = "irc"
