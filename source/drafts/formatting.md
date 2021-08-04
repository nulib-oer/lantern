# Plain Text Formatting

We'll use plain text to create metadata and format our textbook projects. This work requires a text editor. Every operating system includes a default plain text editor. On Windows, the default editor is [Notepad](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab); on macOS, the default editor is [TextEdit](https://support.apple.com/guide/textedit/welcome/mac). 

## Textbook Metadata with YAML

Textbooks need bibliographic metadata in order to be indexed by search engines and library catalogs. Lantern stores metadata about the textbook in a [YAML](https://en.wikipedia.org/wiki/YAML) file. YAML is a data serialization language, like [JSON](https://en.wikipedia.org/wiki/JSON) or [XML](https://en.wikipedia.org/wiki/XML), often used as a format for configuration settings. In this chapter you will learn all you need to know to use YAML for the purposes of creating open textbooks with Lantern. 

The information stored in YAML syntax will be used to fill the templates for each of the publication formats (e.g. HTML, PDF, etc.). Lantern includes a `metadata.yml` file (more on this later!) that is used to store all the data necessary to display this information (and more):

- Title
- Subtitle
- Authors
- Description
- Keywords
- Contributors
- Copyright
- License

### Metadata as Key-Value Pairs

YAML's syntax is organized in key-value pairs: 

- the **key** defines the metadata field used by the output templates
- the **value** captures the information about your project

The key must **always** be followed by a colon and a space. There are a number of rules that help with writing valid YAML, such as rules for indentations and spaces. Here are a few: 

- YAML keys should use all lowercase letters
- If the name of the key involves more than one word, the words should be separated by hyphens (i.e. with kebab-case, such as `reference-section-title`)
- Two key value-pairs **cannot** be in the same line. 
- If a key holds multiple values, each value must appear in a new line, intended, and preceded by a dash and a space. 

### Single Value Metadata Fields

::: box :::

Examples of single value metadata fields: `title`, `subtitle`, `doi`.

:::

A single-value field is structured like this:

```
key: value
```

For example, the title for a textbook called "Theories of Relativity" would be expressed like this in a YAML file:

```yaml
title: Theories of Relativity
```

The key begins a new line in the YAML file and is separated by the value with a colon (`:`) and a space. The value can be a string, [with or without quotations](https://www.yaml.info/learn/quote.html) (quotations can be useful for capturing literal strings, especially if the string of text includes a colon, apostrophe, or other special character). YAML technically can store data types other than strings, but Lantern is mostly concerned with strings of text. 

### Multiple Value Metadata Fields

::: box :::

Examples of multiple Value Fields: `author`, `keywords`, `subjects`.

:::

Some metadata fields have more than one value. The metadata field for `keywords`, for example, can have multiple values:

```yaml
keywords:
    - textbooks
    - oer
    - digital publishing
```

Each value for `keywords` is identified as a list item. The list item needs to be on a new line, indented, and begin a hyphen symbol (`-`) followed by a space. Some of Lantern's multiple value fields include more specificity. For example, an `author` can have a `name` and an `affiliation`. Here's how Lantern expresses mutliple authors in YAML:

```yaml
author:
    -   name: Chris Diaz
        affiliation: Northwestern University
    -   name: Lauren McKeen McDonald
        affiliation: Northwestern University
```

Again, each item in the `author` list is distinguished by the hyphen (`-`). 

### Special Characters and Paragraphs

::: box :::

Examples of single value metadata fields: `description` and `disclaimer`.

:::

Some characters (like colons, apostrophes, asterisks, or quotations) can cause issues with YAML validation. You might want to use these characters for your titles, subtitles, and description values.

Consider the following titles:

-   QUEER HAPPINESS AND SUPPORT: Examining Happiness in LGBTQ+ People and its Relationship with Worsened Parental Relationships After Coming Out (2021)

-   Entering the "Real World": An Empirical Investigation of College Graduates' Satisfaction with Life (2010)

-   J.D Salinger's novel *The Catcher in the Rye* and the presentation of the crisis of adolescence

These examples contain special characters, specifically quotations, colons and plus signs. The easiest way of avoiding issues with special characters is by using YAML's [literal block](https://learnxinyminutes.com/docs/yaml/) syntax. This syntax uses a pipe character and a new indented block of text to capture a the text with special characters:

```yaml
literal-block: |
    This entire "block of text" will be the value of the 'literal-block' key,
    with line breaks being preserved+

    The literal continues until de-dented, and the leading indentation is
    stripped:

        Any lines that are 'more-indented' keep the rest of their indentation -
        these lines will be indented by 4 spaces.
```

Literal blocks are also useful for writing values of metadata fields that involve entire paragraphs, such as the abstracts.

### YAML Validation

Lantern scripts will produce errors if your `metadata.yml` file is not using valid syntax. This is a common error that you shouldn't worry about if you encounter it (you almost certainly will!). Because pretty much everyone struggles with this, the internet offers countless online YAML valdation tools ([like this one](https://jsonformatter.org/yaml-formatter)) that you can use to help figure out where your syntax might be off. 

If you want to know more about YAML's capabilities in contexts beyond Lantern you can watch this [video](https://www.youtube.com/watch?v=2JE66WFpaII&feature=emb_imp_woyt) or visit this [tutorial](https://www.tutorialspoint.com/yaml/index.htm).

::: box :::

**We provide a [reference chapter on YAML](#metadata-in-yaml) for all available metadata fields.**

:::

## Chapter Content with Markdown

You can use a word processor to prepare and format documents before they're converted to Markdown files, but you will need to learn some basic Markdown syntax in order to clean up your conversions and create more complex elements within your textbook, such as callout boxes, tables, and math equations.

Writing in Markdown should be thought of as giving your content structure, not style. You use Markdown for headings, links, lists, footnotes, etc. Special characters like en- and em-dashes, and diacritics work fine in Markdown and in Lantern. 

Example content in Markdown syntax:

```
# Chapter Title

Introductory paragraph text with **bold** and *italic* text.

## Section Heading

Introductory paragraph for the section. 

Another paragraph, but with a [link to a website](https://example.com).

### Subsection Heading

More content, but in list form:

- list item
- list item
- list item
```

Lantern provides guidance and tools to simplify the conversion process from common word processing formats (`.docx` or `.odt`) to Markdown. The conversions won't be perfect, but they'll save you a lot of time and make your documents more accessible. Since Lantern uses Pandoc as it's Markdown processor, we'll be using [Pandoc's Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) to format our textbooks. 

::: box :::

**We provide a [reference chapter on Markdown](#content-in-markdown) for all available chapter elements.**

:::