# Content in Markdown

This section covers formatting guidelines for basic content elements within textbook chapters. 

## Chapter Title

Each chapter requires a title in the first line of the file. The chapter title is represented as a first-level heading in Markdown, with one hashtag symbol (`#`) followed by a space and the title itself:

```
# This is the chapter title
```

You can use any punctuation in the title. When the book is rendered, the chapter title will be given an ID that can be referenced. The ID is defined by the chapter title text, all lowercased and separated by hyphens. The reference ID for the example chapter title above is `this-is-the-chapter-title` and can be linked elsewhere in the text as a [link](#links).

## Section Headings

Think of your headings as content outlines, not as visual representations of hierarchy based on font size. Like the chapter title, headings are created with hashtags where the number of hashtags corresponds to the level of the heading you want.

```
## Section Heading

### Subsection Heading

#### Subsubsection Heading 
```

Start your section headings with Heading 2 tags (`##`) rather than Heading 1 (`#`). Heading 1 should be reserved for the chapter title. Section headings are also assigned referenced IDs that can be used to create links within your textbook.

## Paragraphs

Individual paragraphs are blocks of text that are separated by line breaks. There needs to be an empty line in the file before and after the block of text to create a paragraph.

```
This is the first paragraph.

This is the second.
```

## Links

Links are created with text in brackets followed immediately by a url in parentheses.

```
[Link Text](http://www.linkadress.com)
```

Links within the textbook are created the same way, but you'll need the reference ID in order to assign the link with a target location. The chapter title and all section headings are automatically assigned reference IDs:

```
### Section heading that I want to reference elsewhere

Paragraph text is here.

```

The link to the above section:

```
As we [mentioned previously](#section-heading-i-want-to-reference-elsewhere), we already covered this.
```

## Italics and Bold Emphasis

Italics and bold are created with asterisks (`*`): single asterisks for *italics* and double asterisks for *bold*. Italics can also be created with underscores (`_`). Three asterisks are for bold and italics text.

```
*Italic Text* or _Italic Text_

**Bold Text**

***Bold and italics text***
```

## Blockquotes

Blockquotes (indented blocks of text) are created with the right caret, or greater-than sign, with the text to be quoted following it on the same line:

```
> "This...Stuff"? Oh. Okay. I see. You think this has nothing to do with you. You go to your closet and you select , I don't know that lumpy blue sweater, for instance because you are trying to tell the world that you take yourself too seriously to care about what you put on your back. But what you don't know is that that sweater is not just blue, its not turquoise. It's not lapis. Its actually cerulean. And you're also blithely unaware of the fact that in 2002, Oscar de la Renta did a collection of cerulean gowns. And then i think it was Yves Saint Laurent - wasn't it who showed cerulean military jackets?And then cerulean quickly showed up in the collections of eight different designers. And then it, uh, filtered down through the department stores and then trickled on down into some tragic Casual Corner where you, no doubt, fished it out of some clearance bin. However, that blue represents millions of dollars and countless jobs and its sort of comical how you think that you've made a choice that exempts you from the fashion industry when, in fact you're wearing a sweater that was selected for you by the people in this room from a pile of stuff. ---**Miranda Priestly**
```

## Lists

You can create bulleted or numbered lists. 

### Bulleted Lists

Begin each list item on its own line, a hyphen (`-`) or star (`*`) symbol, and the item text:

```
- hyphens
- make
- a list
- with
- bullets
```

Lists can be nested with indentation:

```
- hyphens
    - make
- a list
    - with
    - bullets
```

### Numbered Lists 

Numbered lists begin with any number. The number that you use will begin the list count. For example, starting a numbered list with a `4.` will generate a list that begins with the number `4`. You don't need to number each item individually, you can simply start a numbered list with a `1.` (or whatever number you want) and the conversion will automatically count each following item accordingly:

```
1. first item
1. second item
1. third item
```

will generate:

1. first item
1. second item
1. third item

## Vocabulary Terms

Vocabulary terms can actally make use of a third type of list: [description lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dl). A description list is a semantic element that includes items and their descriptions:

```
item

: item's definition

another item

: another item's definition.
```

Each item begins on its own line by itself, followed by a double-line break, a colon `:`, and the definition of the item. 

## Footnotes

Footnotes are similar to links. Here is footnote syntax:

```
Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

    Subsequent paragraphs are indented to show that they
belong to the previous footnote.

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.
```

The identifiers in footnote references may not contain spaces, tabs, or newlines. These identifiers are used only to correlate the footnote reference with the note itself; in the output, footnotes will be numbered sequentially.

The footnotes themselves need not be placed at the end of the document. They may appear anywhere except inside other elements (lists, block quotes, tables, etc.). Each footnote should be separated from surrounding content (including other footnotes) by blank lines.

## Tables

We recommend that tables be finalized *before* they are formatted in Markdown. Markdown does not have an elegant way of formatting tables from scratch (or, in some cases, even from conversion). We recommend using a [Markdown table generator](https://www.tablesgenerator.com/markdown_tables). Some Markdown table generators will allow you to [import tables created in Excel or CSV formats](https://jakebathman.github.io/Markdown-Table-Generator/).

That said, here's the basic syntax for a pipe table in Markdown:

```
| Table Heading | Another Table Heading |
|---------------|-----------------------|
| some content  | more content          |
| some content  | more content          |

: Table caption

```

Visual Studio Code has some helpful exentions for formatting Markdown. The above table was made using the [Markdown Table Prettifier](https://marketplace.visualstudio.com/items?itemName=darkriszty.markdown-table-prettify) extension. There is also the [Excel to Markdown Table](https://marketplace.visualstudio.com/items?itemName=csholmq.excel-to-markdown-table) extension for copying tables from [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel) and pasting them within your chapters as Markdown tables.

## Code

Start a new line with three backticks to open the code block, enter your code content verbatim, then start another new line with three backticks to close the code block.

Inline code can be formatted with single backticks:

```
This line of text includes some HTML `<title>Title</title>` code.
```

## Math equations

Lantern uses LaTeX to generate PDFs and [MathJax](https://www.mathjax.org/) to render mathematical equations in web browsers. Both of these processing engines use dollar signs for tagging mathematical notation:

Inline math uses single dollar signs:

```t
When $a \ne 0$, there are two solutions to \(ax^2 + bx + c = 0\) and
```

Display math uses double dollar signs, separated by new lines:

```t
$$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}.
$$
```

Visual Studio Code can be enhanced with the [Markdown+Math](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath) extension, which will preview LaTeX math equation rendering in your text editor.

## Callout Boxes

Lantern includes some special markdown formatting options for creating callout boxes. This can be useful for learning objectives or side comments to help identify key points or extra resources. 

```
::: box :::

Markdown content within the box! Such as:

**A List:**

- list item
- list item
- list item

:::
```

To open the callout box, begin a new line with three colons (`:::`) followed by the word "box" and another three colons (`:::`). The content that you want within the callout box should be place on the next few lines. Three colons (`:::`) on their own line after the content will close the callout box. 

::: box :::

Lantern uses standard markdown syntax used in a variety of applications. There are countless markdown guides available you can check out to learn more, but here are a few we like:

-   [Markdown tutorial](https://www.markdowntutorial.com/)

-   [Markdown guide](https://www.markdownguide.org/basic-syntax/)

Materials on this page were adapted from ["Markdown Basics"](https://quire.netlify.app/documentation/fundamentals/) by Quire, licensed under [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/) and Pandoc's [User Guide](https://pandoc.org/MANUAL.html). 

:::