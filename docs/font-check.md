# Font check

The template expects the Persian font files to stay in `Template\fonts`.

If text renders with the wrong shape, I check the font path in `course.sty` and the engine used by the build command.

The template should be built with XeLaTeX. pdfLaTeX cannot handle the Persian font setup here.
