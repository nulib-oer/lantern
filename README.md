# Lantern

![Lantern Logo](https://user-images.githubusercontent.com/24395592/148448632-567a0dd5-af8b-483f-9713-dfada549cd01.png)

Lantern is a [Pandoc](https://pandoc.org) template and toolkit for making [OER](https://en.wikipedia.org/wiki/Open_educational_resources) textbooks in multiple formats from markdown. All of the processing and hosting is handled automatically using GitHub Actions. Just edit your files and commit your changes to update your project. 

- Read the [documentation](https://github.com/nulib-oer/lantern/wiki) to get started.
- Post a question in the [discussion forum](https://github.com/nulib-oer/lantern/discussions)
- Report a bug or feature request in the [issue tracker](https://github.com/nulib-oer/lantern/issues)

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

## Examples

- [Minimal Working Example](https://nulib-oer.github.io/lantern/)
- [Introduction to Materials Science and Engineering](https://chrisdaaz.github.io/intro-to-mse/)
- [Empirical Methods in Political Science: An Introduction](https://emps.northwestern.pub)