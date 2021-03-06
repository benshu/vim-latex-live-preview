## Synopsis

Live preview for latex file edited in vim, by using a simple makefile and the fswatch program to monitor changes to all .tex files in the working directory, and recompile the .tex file to pdf on every file change.
The current configuration is for os x, but can easily be adapted for any linux / unix os.

The content in this repository was inspired and taken from the following video -
[Showing off live-preview of LaTeX being edited in NeoVim](https://youtu.be/zCdDgtlBaTU)


## Motivation

When editing LaTeX document, it sometimes very helpful to be able to have a live preview of the rendered result, for example, when editing complex equations or diagrams.


## Installation

add the following lines to the .gitconfig file

    difftex = difftool -y -t latex
    [difftool.latex]
      cmd = latexdiff "$LOCAL" "$REMOTE"
      
copy the 'Makefile_latex_live_preview' file to the current working directory where the .tex file is being edited, and rename it to 'Makefile'.


## Running

run in the working directory (where the .tex file is being edited) 

    make
  

By using a properly configured pdf viewer it is possible to achieve real time results.

In os x, preview work out of the box, but every refresh cause the document to scroll to top which might be annoying when working on multi page documents. 

For better results use mupdf - [http://mupdf.com/](http://mupdf.com/) which runs on the xquartz framework in osx.
