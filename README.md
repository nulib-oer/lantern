# Lantern

![LanternLogo_Black](https://user-images.githubusercontent.com/24395592/160508807-1efcff5f-3e97-4a88-8e2b-cbc706ff1637.jpg)

Lantern is a [Pandoc](https://pandoc.org) template and toolkit for making [OER](https://en.wikipedia.org/wiki/Open_educational_resources) in multiple formats. Lantern helps you typeset OER projects with Markdown (`.md`) from common word processing formats (`.docx`) so that you can generate HTML, PDF, and EPUB versions for the public. All of the source control, file processing, and web hosting is handled automatically with GitHub, but you are encouraged to use Lantern on your own computers. 

## Features

- **Free:** Lantern uses open source software and free-of-charge web services for processing, building, deploying, and hosting OER. 

- **Portable:** Lantern emphasizes the use of plain text file formats that can run on any machine or web host. No databases or server-side applications are required to be purchased, installed, or maintained. 

- **Multi-format:** Lantern uses semantic markup technologies for distributing OER as Markdown, HTML, PDF, EPUB, and DOCX documents in order to provide versioned, web, print, e-reader, and editable access to the public.

- **Autonomy**: Lantern teaches fundamental document organization, formatting, and production skills in order to decrease reliance on monolithic software solutions and platforms.

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

## Get Started

- Read the [documentation](https://github.com/nulib-oer/lantern/wiki) to learn more
- Post a question in the [discussion forum](https://github.com/nulib-oer/lantern/discussions)
- Report a bug or feature request in the [issue tracker](https://github.com/nulib-oer/lantern/issues)

### Software Dependencies

While this template is setup to use [GitHub Actions](https://github.com/features/actions) and [GitHub Pages](https://pages.github.com/) for file processing and web hosting, you can use the template on your own machine and deploy the outputs to any other web host. Here's what you'd need:

- A text editor (e.g. [Visual Studio Code](https://code.visualstudio.com/))
- [Pandoc](https://pandoc.org/): a universal document converter
- [PagedJS: Command line version](https://pagedjs.org/documentation/2-getting-started-with-paged.js/#command-line-version) (which itself requires [nodejs](https://nodejs.org/en/) and [npm](https://www.npmjs.com/)): for generating PDFs
- (Windows only) [Git Bash](https://gitforwindows.org/): for running bash scripts and a few [GNU](https://www.gnu.org/) utilities

#### Optional Software

- [Pandoc-crossref](https://lierdakil.github.io/pandoc-crossref/): a pandoc filter for numbering figures, equations, tables, and cross-references to them.
- A [LaTeX distribution](https://www.latex-project.org/get/#tex-distributions): for LaTeX/PDF typesetting and generation (we like [TinyTeX](https://yihui.org/tinytex/))

## Related Publication

Diaz, Chris. 2022. "[Lantern: A Pandoc Template for OER Publishing](https://journal.code4lib.org/articles/16329)," _Code4Lib Journal_ 53. Available: https://journal.code4lib.org/articles/16329
