#!/usr/bin/env zsh

if test $1 = "*.tex"; then
        echo {} "Updating diff ... "
				git difftex $1 > diff.tex
				echo "Generating pdf" 
				pdflatex -synctex=on -interaction=nonstopmode -halt-on-error diff.tex
				killall -HUP mupdf-x11
#				/usr/bin/osascript << EOF
#								set theFile to POSIX file "diff.pdf" as alias
#								tell application "Skim"
#								activate
#								set theDocs to get documents whose path is (get POSIX path of theFile)
#								if (count of theDocs) > 0 then revert theDocs
#								open theFile
#								end tell
#EOF
fi
