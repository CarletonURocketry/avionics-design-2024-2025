# Avionics Design 2024-2025

Design document for the 2024-2025 avionics systems. Intended for use in preliminary design review and for future members
to review to get an understanding of what's been done before.

## Viewing

To view the latest version of the design document in PDF format within your browser, go [here][pdf].

## Downloading

If you'd like to download the pre-compiled PDF for the design documents, you can download it from the actions artifacts.

1. Go to the "Actions" tab on the GitHub repository.
2. Select the last successful (green) workflow named "Build LaTeX document".
3. Look for a file called "CUInSpace Avionics Systems Design 2024-2025" under the "Artifacts" header.
4. Download and unzip.

## Building

To generate the specification PDF, run `make all` within the project directory. You must have LaTeX tooling installed
(specifically `pdflatex`). You'll probably need the `texlive-latex-reccomended`, `texlive-extra-utils`, `texlive-latex-extra`,
`texlive-bibtex-extra`, and `texlive-science` packages if you're using `apt`.

On Windows, this will work if you run `pdflatex design.tex`, then `makeglossaries design` and finally `pdflatex
design.tex`.

Building On Windows: Assuming you have LaTeX (specifically `latexmk`) installed you can build the PDF with `latexmk`. To clean up auto-generated temporary files run `latexmk -c`.

<!--Links-->

[pdf]: https://github.com/CarletonURocketry/avionics-design-2024-2025/blob/gh-pages/CUInSpace%20Avionics%20Systems%202024%202025.pdf
