# Preparing Manuscripts

If you're starting with `.docx` or `.odt` files, you'll need the ability to open the files and apply styles to chapter contents, such as headings. We recommend [Microsoft Word](https://www.microsoft.com/en-us/microsoft-365/word?rtc=1) because of it's popularity, but cost-free options like [Libre Office](https://www.libreoffice.org/) or [Google Docs](https://www.google.com/docs/about/) will also work. 

## File Naming and Organization

Each chapter of your textbook needs to be it's own separate file. This is true in both the Microsoft Word stage as well as the Markdown stage. To make things easier, we recommend separating each chapter as Microsoft Word files using the following naming convention:

| Naming Convention              | Example                 |
|--------------------------------|-------------------------|
| `[number]-[chapter-name].docx` | `01-first-chapter.docx` |

Lantern's conversion process betwen Word and Markdown will retain the file names and, ultimately, the chapter order.

## Chapter Styles

If you're starting with a manuscript that was
written in a word processor, we recommend applying standardized styles
to some elements of your chapters before adding them to your project
repository. Styles provide visual structure to the text, and they also
add semantic elements on the backend that can be more easily converted
into Markdown format. In addition, applying styles will help to make
your final OER accessible to everyone.

Use styles for the following content types:

-   Chapter Titles

-   Headings

-   Body/paragraph text

Use Word's native formatting tools for the following:

-   Footnotes & endnotes

-   Bulleted lists

-   Italics and bold

## Adding a title, subtitle, and headings

1.  Open the `.docx` file in Word and highlight the text you want to
    format.

2.  Either right click to select **Styles** or use the toolbar
    **Styles** option to select the relevant style for your content.

![Chapter Title style in a sample Word document](word_styles.png)

When selecting headings, the structure should follow the logic of the
content. Chapter titles and headings will eventually become the table of
contents for your book. Here are some basic definitions and pointers:

-   **Heading 1**: use this style for title of the chapter. Only one Heading 1 may be used per chapter.

-   **Heading 2:** the next level down, this is a major section heading.
    There can be as many Heading 2s as there are major sections in your
    chapter or book.

-   **Headings 3:** this is a subsection of Heading 2. You may continue
    with additional headings as needed up to heading 6. Headings beyond
    6 are not supported in PDFs or webpages.

Headings should be properly nested, and should not be placed out of
order (for example, use heading 3 only after you've already used heading
2).

For more information on building document structure with headings, visit
the [WebAim's Semantic Structure guide](https://webaim.org/techniques/semanticstructure/).

## Adding images

Instead of embedding images within Word documents, we recommend adding the image files to a specific folder and referecing the file name within the document. 

For now, you can use placeholder text within your Word document so you know where the images will eventually be placed. Here's a sample placeholder text you can use:

\[INSERT IMAGE: "(caption)" filname.jpg (sent separately)\]

::: box :::

**Additional Resources:**

-   [Microsoft Word Documentation on Styles](https://support.microsoft.com/en-us/office/apply-styles-f8b96097-4d25-4fac-8200-6139c8093109)

-   [Understanding Document Accessibility](https://pressbooks.library.ryerson.ca/docs/) by The
    Chang School, Ryerson University

:::