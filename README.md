# Lantern

![Lantern Logo](https://user-images.githubusercontent.com/24395592/155175321-3a2b3a47-e62e-464f-98aa-f3a4e824ce5d.png)

Lantern is a [Pandoc](https://pandoc.org) template and toolkit for making [OER](https://en.wikipedia.org/wiki/Open_educational_resources) in multiple formats from markdown. All of the processing and hosting is handled automatically using GitHub Actions. Just edit your files and commit your changes to update your project. 

- Read the [documentation](https://github.com/nulib-oer/lantern/wiki) to get started.
- Post a question in the [discussion forum](https://github.com/nulib-oer/lantern/discussions)
- Report a bug or feature request in the [issue tracker](https://github.com/nulib-oer/lantern/issues)

## Required Software

While this template is setup to use GitHub Actions and GitHub Pages for file processing and web hosting, you can use this on your own machine and deploy to any other web host. Here's what you'd need:

- A text editor (e.g. [Visual Studio Code](https://code.visualstudio.com/))
- [Pandoc](https://pandoc.org/): a universal document converter
- [PagedJS: Command line version](https://pagedjs.org/documentation/2-getting-started-with-paged.js/#command-line-version) (which itself requires [nodejs](https://nodejs.org/en/) and [npm](https://www.npmjs.com/)): for generating PDFs
- (Windows only) [Git Bash](https://gitforwindows.org/): for running bash scripts and a few [GNU](https://www.gnu.org/) utilities

### Optional Software

- [Pandoc-crossref](https://lierdakil.github.io/pandoc-crossref/): a pandoc filter for numbering figures, equations, tables and cross-references to them.
- A [LaTeX distribution](https://www.latex-project.org/get/#tex-distributions): for LaTeX/PDF typesetting and generation (we like [TinyTeX](https://yihui.org/tinytex/))

## Starting Manuscript Files

Lantern provides [conversion scripts](https://github.com/nulib-oer/lantern/blob/main/lantern.sh#L20) for a subset of file formats that Pandoc is able to convert. Lantern will convert these file formats to Markdown:

| File Extensions | Format             | Related Applications                     |
|-----------------|--------------------|------------------------------------------|
| `.docx`         | Open Office XML    | Microsoft Word, Google Docs, LibreOffice |
| `.odt`          | Open Document Text | Microsoft Word, Google Docs, LibreOffice |
| `.tex`          | LaTeX              | Plain text editor (e.g. VS Code, Overleaf)     |

## Final Publication Files

Lantern provides [templates](https://github.com/nulib-oer/lantern/tree/main/templates) for producing multiple publication formats from Markdown. Lantern can produce these publication formats from a single source:

| File Extensions | Format             | Related Applications                          |
|-----------------|--------------------|-----------------------------------------------|
| `.docx`         | Office Open XML    | Microsoft Word, Google Docs, LibreOffice      |
| `.tex`          | LaTeX              | Plain text editor (e.g. VS Code)              |
| `.html`         | HTML5              | web browsers                                  |
| `.epub`         | EPUB3              | Calibre, Adobe Digital Editions, web browsers |
| `.pdf`          | PDF                | Adobe Acrobat Reader, web Browsers            |

> Note: Lantern provides [templates](https://github.com/nulib-oer/lantern/tree/main/templates) and configurations for generating `.tex` files for LaTeX or ConTeXt engines. These files are only recommended for people who are familiar with these typesetting technologies.  

## Examples

- [Minimal Working Example](https://nulib-oer.github.io/lantern/)
- [Introduction to Materials Science and Engineering](https://chrisdaaz.github.io/intro-to-mse/)
- [Empirical Methods in Political Science: An Introduction](https://emps.northwestern.pub)