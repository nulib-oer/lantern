# Metadata in YAML

The fields that are labelled optional can be commented out from the file by placing a hashtag symbol (`#`) at the beginning of the line (hint: the first line of `source/metadata.yml` is an example of a YAML comment). 

## Textbook Information

Metadata for your textbook project is contained within the `source/metadata.yml` file. This list of metadata fields are available for your use:

- `title`: the title of your work. If the title contains punctuation, wrap the title in quotes (example: `title: "Long Day's Journey Into Night"`) or format it as a literal block (see: `description` below).

- `subtitle` (optional): the subtitle of your work.

- `author`: The author or authors of the work. This field can contain one or more authors. Each author must have a `name`, but the `affiliation` is optional. Begin each author entry on a new line, indented, and beginning with a hyphen (`-`) before the `name` attribute.

- `contributor` (optional): Any contributors to the work, such as editors or research assistants. Write each entry as a list item: on a new line, indented, beginning with a hyphen (`-`).

- `publication-year`: The year the book was published: `YYYY`

- `doi` (optional): A Digital Object Identifier for the book formatted as a number, not as a URL. The templates will use this number to generate a URL for the DOI.

- `isbn-p`: the International Standard Book Number (ISBN) of the print version

- `isbn-e`: the International Standard Book Number (ISBN) of the e-book version

- `website`: the website URL for the book

- `keywords`: Any specific keywords to describe the book. Write each entry as a list item: on a new line, indented, beginning with a hyphen (`-`).

- `subjects`: Any subject areas covered by the books contents, such as the academic discplines that may be interested in using the book for a course. Write each entry as a list item: on a new line, indented, beginning with a hyphen (`-`).

- `description`: One or more paragraphs that introduce the book to potential readers. Format this field as a literal block, where the key is followed by a space and a pipe character (`|`), and the value is on a new line, indented. Spaces between paragraphs will be preserved in the output.

- `lang`: The primary language used within the book. This field sets the language code in the HTML and EPUB output formats to assist web browsers and screen readers. Default is `en-us`.

## Copyright and Licensing

- `copyright`: Contains several subfields to describe the book's copyright and licensing status:

    - `holder`: Specifies the Copyright holder of the book
    
    - `statement`: Specifies the copyright status of the book. We recommend using [Rights Statements](http://rightsstatements.org). The default is "In Copyright"
    
    - `statement-uri`: The uniform resource identifier of the `statement`. If using Rights Statements, this is the URL to the statement definition.
    
    - `license`: The copyright licensed applied to the work. We recommend [Creative Commons](https://creativecommons.org) licenses. 
    
    - `license-uri`: The uniform resource identifier of the `license`. If using Creative Commons, this is the URL to the license definition.

    - `attribution`: The preferred form of attribution for others to reference the work. Format this field as a literal block, where the key is followed by a space and a pipe character (`|`), and the value is on a new line, indented.

    - `exceptions`: Similar fields to `keywords` or `subjects`, this represents a list of items within the book that are **not** covered by the license. This appears on the copyright page of the book. An alternative to using this field is to label the exceptions as such as they appear throughout the book. 

- `publisher`: Contains several subfields about the publisher of the book.

    - `name`: The name of the publishing organization
    - `location`: The location of the publishing organization
    - `website`: The website of the publishing organization
    - `disclaimer`: The disclaimer used by the publishing organization on its publications. Format this field as a literal block, where the key is followed by a space and a pipe character (`|`), and the value is on a new line, indented.

## Publication Settings

- `cover`: True or False. This will enable or disable the use of a cover image on the book's website and EPUB output. The cover image must be a PNG file placed within the `source/images/` directory with `cover.png` as the filename.

- `download`: This allows you to control the download options available on the books website. By default, all of the output formats are generated and linked from the website. You can remove or comment out any format options you don't want to distribute. 

    - `format`: The label of the format. You can change this to change the label (example: using `Microsoft Word` instead of `DOCX`).
    - `link`: Link to the file. Specify the file name with the exention. You can also put a URL here if the format is available at another web address.

- `toc-title`: The label for the Table of Contents.

- `reference-section-title`: The label for the References section heading. Alternatives might be "Works Cited" or "Bibliography"

- `linkReferences`: This links reference IDs with reference descriptions throughout the book using the [`pandoc-crossref`](https://lierdakil.github.io/pandoc-crossref/) filter. 

## Print Settings

`paper`: These settings will help you define the paper size for the generated PDF file. If using a print-on-demand service, modify these settings according to their specifications for interior PDF files.