function! MakeMarkdownLink()
	let description = input("description: ")
	return ("[" . description . "]" . "(" . expand('%:p') . ":" . line(".") . ")" )
endfunction

function! GetCurrentDate()
	return strftime("%Y-%m-%d")
endfunction

command! -nargs=0 CopyMarkdownLinkToClipboard let @+ = MakeMarkdownLink()

nmap <LEADER>l :CopyMarkdownLinkToClipboard<CR>

