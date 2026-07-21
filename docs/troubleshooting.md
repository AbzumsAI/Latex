# Troubleshooting

When a build fails, I start with the first error in the log.

Common checks:

- The command uses XeLaTeX.
- `commons\course.sty` exists.
- The `fonts` folder exists.
- Every `\input` line points to an existing file.
- Blank space commands include a unit.

I fix the source file that caused the first error, then build again.
