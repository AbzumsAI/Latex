# Font files

The template keeps Persian fonts inside the repo so XeLaTeX can build the PDF on another machine.

If a build cannot find a font, I first check that the command is using XeLaTeX and that `course.sty` still points to this folder.

I do not rename these files unless every reference is updated at the same time.
