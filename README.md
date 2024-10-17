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
(specifically `pdflatex`).

On Windows, this will work if you run `pdflatex design.tex`, then `makeglossaries design` and finally `pdflatex
design.tex`.

<!--Links-->

[pdf]: https://github.com/CarletonURocketry/avionics-design-2024-2025/blob/gh-pages/design.pdf
