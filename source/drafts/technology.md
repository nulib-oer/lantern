# Technology Overview

::: box :::

**No prior coding experience is required to begin publishing OER with Lantern.** This toolkit provides all of the necessary instructions, templates, and scripts to begin publishing and sharing OER.

Lantern provides two workflow options to guide you through producing OER in multiple formats from a single source. Once you've learned the workflows, you'll be able to:

1. Take a textbook manuscript or other content and convert it from a word processing format (such as .docx) to Markdown
2. Use Markdown syntax to format your content to include simple design elements such as bold, callout boxes, hyperlinks, tables, equations, and embedded media
3. Publish the fully-accessible OER as a website with PDF, EPUB, LATEX, and DOCX download options

:::

## Production Workflows


- The [**online** workflow](#online-workflow) is for first-time users of Lantern. This workflow does not require any software installations. It relies on [GitHub](https://github.com/) for document processing, and uses [GitHub Pages](https://pages.github.com/) as an option for a web hosting service. If you choose this workflow, you'll be ready to produce your own open textbooks in about 30 minutes.

- The [**desktop** workflow](#desktop-workflow) is for advanced users who are already familiar with the online workflow, and who want a more robust environment to produce open textbooks. It removes GitHub as the document processor, and requires some free software installation. This workflow uses the command line to run scripts that Lantern provides. Depending on your operating system and permissions, if you choose this workflow, you'll be ready to produce your own textbooks in about 3 hours.

The online workflow uses [GitHub Pages](https://pages.github.com/) as a web hosting service, but the output files can be uploaded to any other static website hosting service. 

## Manuscript Files

Word processing formats like `.docx`, `.odt`, or `.rtf` are helpful to authors for writing their manuscripts, but can be problematic for digital production and archiving. Editors like Microsoft Word and Google Docs obscure the semantic elements of the document. Word processing formats like `.docx` risk becoming obsolete over time. 

::: example :::

For example, a Microsoft Word document might visually display a subheading using centered horizontal alignment and a bold typeface. While sighted people may be able to understand this as a heading, screen-readers wouldn't be able to distiguish it from any other paragraph in the document. Document markup identifies semantic elements explicitly through the use of tags. 

:::

Lantern requires manuscript files to be formatted as plain text Markdown (`.md`) files. Markdown is the syntax and file format we'll use for tagging structural elements within the textbook chapters, such as headings.

> The idea is to identify logical structures in your document (a title, sections, subsections, footnotes, etc.), mark them with some unobtrusive characters, and then “compile” the resulting text with a typesetting interpreter which will format the document consistently, according to a specified style. [@tenen_sustainable_2014]

### Lantern Supported Manuscript File Formats

Lantern provides [conversion scripts](https://github.com/nulib-oer/lantern/blob/main/assets/scripts/preprocess.sh) for a subset of file formats that Pandoc is able to convert. 

| File Extensions | Format             | Related Applications                     |
|-----------------|--------------------|------------------------------------------|
| `.docx`         | Open Office XML    | Microsoft Word, Google Docs, LibreOffice |
| `.odt`          | Open Document Text | Microsoft Word, Google Docs, LibreOffice |
| `.tex`          | LaTeX              | Plain text editor (e.g. VS Code, Overleaf)     |

: Lantern will convert these file formats to Markdown

## Publication Formats

Lantern provides [templates](https://github.com/nulib-oer/lantern/tree/main/assets/templates) for producing multiple publication formats from Markdown.

| File Extensions | Format             | Related Applications                          |
|-----------------|--------------------|-----------------------------------------------|
| `.docx`         | Office Open XML    | Microsoft Word, Google Docs, LibreOffice      |
| `.tex`          | LaTeX              | Plain text editor (e.g. VS Code)              |
| `.html`         | HTML5              | web browsers                                  |
| `.epub`         | EPUB3              | Calibre, Adobe Digital Editions, web browsers |
| `.pdf`          | PDF                | Adobe Acrobat Reader, web Browsers            |

: Lantern can produce these publication formats

## Processing Software

Lantern uses a few open source programs to make the publishing outputs, but you won't interact with these programs directly if you're using the online workflow:

- [Pandoc](https://pandoc.org/) uses the Markdown source files to produce the textbook editions
- [TinyTeX](https://yihui.org/tinytex/) is used to process LaTeX code for building the PDF edition
- [Bash](https://www.gnu.org/software/bash/) is the shell used for handling input and output files
- [Make](https://www.gnu.org/software/make/) simplifies the production settings and processes

The online workflow provides a GitHub repository that is preconfigured to run all of the required processing scripts using [GitHub Actions](https://github.com/features/actions). The Desktop workflow requires installing and using Pandoc, TinyTeX, Bash, and Make to produce the output files on your computer.

| Requirements | Online | Desktop |
|-|-|-|
| GitHub Account | Yes | No |
| Text Editor | No | Yes |
| Pandoc | No | Yes |
| LaTeX | No | Yes |
| Bash | No | Yes |
| Make | No | Yes |