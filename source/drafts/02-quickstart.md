# Quick Start

Beginners might want to read the Technology Overview and the Online Workflow sections for guided instructions and context, but here's a quick guide for anyone who's ready to get started.

## Required Software

- A text editor (e.g. [Visual Studio Code](https://code.visualstudio.com/))
- [Pandoc](https://pandoc.org/): document converstion tool
- [Pandoc-crossref](https://lierdakil.github.io/pandoc-crossref/): handles numbered references
- A [LaTeX distribution](https://www.latex-project.org/get/#tex-distributions): for PDF typesetting and generation
- (Windows only) [Git Bash](https://gitforwindows.org/): for running `.sh` scripts

## Get the Template

- Download a copy of the [template repository](https://github.com/nulib-oer/lantern) via `git clone` or as a `.zip` archive.
- Open the repository folder in your terminal
- Test the sample outputs: `$ sh lantern.sh`
    - This will use the sample content in the `source` directory and the default configurations in the `assets` directory to build a website, PDF, EPUB, DOCX, and LaTeX editions of a textbook in the `public` directory.
- The terminal will return errors if you're missing any required software in your `PATH`
- If you don't see errors, you can open the `public` directory to see the sample outputs.

If everything seems to work, you can delete or edit any of the files in the `source` directory. 

## Adding your Content

Your new repository comes with a few files and folders you'll be using to add and edit your manuscript content. All of these files and folders are contained in the `source` directory. These are the **only** files and folders you will need to edit to use Lantern for your textbook project.

- `chapters/`: This folder contains the textbook chapter files

- `images/`: This folder contains the textbook images for figures, logos, covers, etc.

- `preprocess/`: If you add `.docx`, `.odt`, or `.tex` files to this folder, you can run `sh lantern.sh preprocess` to automatically convert these files to Markdown and add them to the `chapters/` folder

- `data/`: This folder stores data about our project, including metadata (`metadata.yml`), references in [BibTex format](http://www.bibtex.org/Format/) (`references.bib`), and output configurations (`config.yml`).

## Build Commands

- `sh lantern.sh html`: Creates an `index.html` file for your textbook homepage and `textbook.html` for the HTML version.

- `sh lantern.sh pdf`: Creates a `textbook.pdf` file for your textbook with images embedded in appropriate places throughout the text.

- `sh lantern.sh epub`: Creates a `textbook.epub` file for your textbook with images embedded in appropriate places throughout the text. This file can be used with e-book readers.

- `sh lantern.sh docx`: Creates a `textbook.docx` file for your textbook with images embedded in appropriate places throughout the text. This file can be edited by other instructors interested in reusing or remixing the textbook content using Microsoft Word or other word processing software.

- `sh lantern.sh latex`: Creates a `textbook.tex` file for your textbook. This file can be edited by other instructors interested in reusing or remixing the textbook content using LaTeX.

- `sh lantern.sh oai`: Creates an OAI-PMH file (`oai.xml`) in the `public` folder for harvesting in library cataloging systems.

- `sh lantern.sh`: Does all of the above.

- `sh lantern.sh clean`: Deletes the `public` folder so that you can have a clean build. This does not affect the `source` folder.

## Deploy your website

Once you're done editing your textbook, go to your terminal and `sh lantern.sh` to generate a fully-fuctional static website that you can be uploaded to any web server or hosting service. This command creates and places all of your output files within a folder called `public`. The contents within the `public` folder are intended to be ready for distribution with the public.

For example, you can use [Netlify Drop](https://app.netlify.com/drop). [Netlify](https://netlify.com) is a web hosting service that specializes in static websites. Here's a video to demonstrate the Netlify Drop feature: 

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/-LRlQ_jaLAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

If you want to give it a try, drag and drop the `public` folder from your computer to Netlify Drop to see your textbook project live on the web. From there, you can use the Netlify to manage your website, such as adding a custom domain name. 