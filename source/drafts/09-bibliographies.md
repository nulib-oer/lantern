# Bibliographic Citations

Lantern supports the automatic generation of citations and bibliographies. Citations are rendered using the [Citation Style Language](https://docs.citationstyles.org/en/stable/specification.html) specification. By default, Lantern uses the [Chicago Manual of Style](https://chicagomanualofstyle.org/) author-date format. Lantern uses the [BibTeX](https://en.wikibooks.org/wiki/LaTeX/Bibliographies_with_biblatex_and_biber) file format for storing reference entries, but you can use other formats if you prefer. 

**Process:**

- Add a citation to a bibliographic data file
- Reference the citation using a unique identifier

## Bibliographic Data Files

We recommend storing bibliographic references in separate files stored in the `/source/` folder along with your other textbook contents. Lantern provides `references.bib` file for you to add your textbook's bibliographic data. You can add to this file manually or supply your own file. Many reference managers (e.g. Zotero, EndNote, etc.) will allow you to export bibliographies in machine-readable formats. Lantern can use this bibliography formats:

| Format | File extension |
|-|-|
| BibLaTeX | `.bib` |
| BibTeX | `.bibtex` |
| CSL JSON | `.json` |
| CSL YAML | `.yaml` |

The easiest way to format a citation for machine-readability is to search for the item in [Google Scholar](https://scholar.google.com/), click on the citation button, then select the `BibTeX` option. This will render the `BibTeX` citation in your web browser for you to copy and paste into `references.bibtex` file. 

![Screenshot of the Citation Button of a Google Scholar Entry](bib_gs-citation-button.png)

![Screenshot of the BibTeX Link of a Google Scholar Entry](bib_gs-bibtex-button.png)

![Screenshot of the BibTex Citation Displayed in the Browser](bib_gs-citation.png)

Here's an example of a `BibTeX` citation:

```t
@article{krewinkel2017formatting,
  title={Formatting Open Science: agilely creating multiple document formats for academic manuscripts with Pandoc Scholar},
  author={Krewinkel, Albert and Winkler, Robert},
  journal={PeerJ computer science},
  volume={3},
  pages={e112},
  year={2017},
  publisher={PeerJ Inc.}
}
```

Most reference management software will let you export your bibliographies as a file in one or more of these formats. We recommend either the `.bib` or `.bibtex` formats for best results. After your export the file, you can either copy and paste the text to the `references.bibtex` file, or add the file itself to the `/source/` directory. 

If the bibliography you use has a different file name than `references.bib`, you'll need to edit the `Makefile` entry for `BIBLIOGRAPHY` to point to your new bibiliography file. For example, if I wanted to use a bibiliography file called `textbook.yaml`, I would edit the `Makefile` to specify: `BIBLIOGRAPHY = textbook.yaml`. 

## In-text Citations

Within the markdown chapter files (`/source/chapters/`), citations go inside square brackets. Multiple references within citations are separated by semicolons. 

Each citation must have a unique identifier that is composed of `@` + the citation identifier from the bibliographic data file. Unique identifiers for citations typically follow a naming convention: author's last name + publication year + first word of title (no spaces, all lowercase). In the above example, the unique identifier is `krewinkel2017formatting`. 

The citation key must begin with a letter, digit, or `_`, and may contain alphanumerics, `_`, and internal punctuation characters (`:.#$%&-+?<>~/`). Here are some examples:

```

Blah blah [see @doe99, pp. 33-35; also @smith04, chap. 1].

Blah blah [@doe99, pp. 33-35, 38-39 and *passim*].

Blah blah [@smith04; @doe99].

```

For more information about in-text citation formatting, see [Pandoc's citation syntax documentation](https://pandoc.org/MANUAL.html#extension-citations). 