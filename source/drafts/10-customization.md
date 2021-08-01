# Customization

Lantern's template repository provides everything you need to begin customizing the styles, templates, and output files. This section provides minimal guidance on customizing your textbooks and refers you to [Pandoc's documentation](https://pandoc.org/MANUAL.html) for further explanation and assistance. 

Up until now, we've been pointing you to the `/source/` for adding all of your textbook contents. The `/assets/` folder contains most of the files you need for customizing your textbooks.

## Metadata and Templates

::: box :::

**TL;DR**

- Add new metadata fields to your `metadata.yml` file
- Reference those fields in the appropriate file within the `/assets/templates/` folder

:::

You can define new metadata fields in the `/source/metadata.yml` file by creating new [YAML keys](https://learnxinyminutes.com/docs/yaml/). Most of the metadata fields that currently exist are based on Pandoc's default [metadata variables](https://pandoc.org/MANUAL.html#metadata-variables).

The `/assets/templates/` folder contains template files for each output format. These files create the document container that Pandoc will fill using the content you provide in the `/source/` folder. These files are written according to [Pandoc's Template syntax](https://pandoc.org/MANUAL.html#templates).

## Styles

You can add your own styles for the HTML and PDF output files. 

### HTML

The HTML output is styled with [UIKit](https://getuikit.com/) user interface framework. Lantern provides UIKit's CSS and JavaScript files in the `/assets/lib/` directory. UIKit provides a base, but we also override several styles in the `/assets/styles/lantern.css` file. 

You can add your own CSS files to the `/assets/styles/custom.css` file. This file is already linked to the HTML template (`/assets/templates/lantern.html`), so no need to edit that unless your adding more CSS or JavaScript files. 

### PDF / LaTeX

The PDF output file is generated using [LaTeX](https://www.latex-project.org/). The LaTeX template file is available at `/assets/templates/lantern.tex`. This file relies solely on the minimal [TinyTeX](https://yihui.org/tinytex/) LaTeX distribution, which only provides [these LaTeX packages](https://github.com/yihui/tinytex/blob/master/tools/pkgs-custom.txt)

You are welcome to edit `/assets/templates/lantern.tex` by adding your own LaTeX commands. If your custom LaTeX commands require new LaTeX packages (from [CTAN](https://www.ctan.org/), for example), make sure that your LaTeX system has those new packages installed. 

TinyTeX includes the TeX Live manager, so adding new LaTeX packages from CTAN is easy from your system terminal:

```
tlmgr install <package-name>
```

## Defaults

Pandoc refers to a defaults file when generating an output format. Each output format has its own defaults file available within the `/assets/defaults/` folder. These are YAML files that help define specific settings for converting from Markdown to DOCX, EPUB, LaTeX, or HTML.

Read [Pandoc's documentation on Default files](https://pandoc.org/MANUAL.html#default-files) for more information on adjusting your file conversion settings. 