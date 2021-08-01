# Online Workflow 

_Estimated time to complete: less than 1 hour_

The Online Workflow is entirely web-based and uses [GitHub](https://github.com) as a publishing platform. This tutorial will guide you through the process of setting up your textbook project on GitHub. By the end of this tutorial, you will be able to use Lantern to create and publish open textbooks.

::: box :::

**Learning Objectives**

Following completion of this tutorial, you will be able to:

- Examine the Lantern publishing workflow without installing any software
- Use GitHub as an online OER workspace and hosting platform
- Apply basic Markdown formatting for open textbook production

:::

## Prerequisites

- Create a [GitHub](https://github.com) account

## Create Your Online Workspace

Your online workspace will be a repository on GitHub. Your repository will contain all of the source files for your textbook. Lantern provides a template repository that you can copy to your GitHub account.

::: box :::

A repository is a project folder that uses [Git](https://git-scm.com/) for version control. [GitHub](https://github.com) is a website for hosting Git repositories. **This video introduces GitHub's web interface and Lantern's template repository.**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/YPo1nlT2XMg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:::

1. Login to [GitHub](https://github.com)

1. Visit [https://github.com/nulib-oer/lantern](https://github.com/nulib-oer/lantern)

1. Click the green "Use This Template" button. This brings you to a "Create a new repository" form. 

![Screenshot of the "Use this Template" button](ow_use-this-template.png)

4. Enter your new repository name for your textbook project. Use a lowercase name without spaces. This name will become part of your site URL. 

![Screenshot of the web form for creating a new repository](ow_new-repository.png)

5. Most users should choose "Public" repository. If you are hosting on GitHub Pages it must be public unless you upgrade to a paid account.

1. Leave the "Include all branches" option unchecked; you only want the `main` branch. The other branches include experimental junk or files you won't need.
   
1. Click on the green button "Create repository from template." This will take you to your new repository.

## Repository Files and Folders

Your new repository comes with a few files and folders you'll be using to add and edit your manuscript content. All of these files and folders are contained in the `source` directory. These are the **only** files and folders you will need to edit to use Lantern for your textbook project. Click on the `source` folder to view its contents.

![Screenshot of the "source" folder contents](ow_source-directory.png)

- `chapters/`: This folder contains the textbook chapter files

- `images/`: This folder contains the textbook images for figures, logos, covers, etc.

- `preprocess/`: If you upload `.docx`, `.odt`, or `.tex` files to this folder, Lantern will convert these files to Markdown and add them to the `chapters/` folder

- `metadata.yml`: This file defines the bibliographic metadata for your textbook

- `references.bib`: This file contains the bibliography for your textbook in [BibTex format](http://www.bibtex.org/Format/)

## Metadata

Textbooks need bibliographic metadata in order to be indexed by search engines and library catalogs. Lantern stores metadata about the textbook in a YAML file. The information stored in the YAML file will be used to fill the templates for each of the publication formats. 

::: box :::

### YAML Primer

YAML is to JSON what Markdown is to HTML. It's a more human-readable (and human-writable) way to express and store data. 

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/cdLNKUoMc6c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

YAML needs to be valid, so if you ever hit an error, it's a good idea to check the YAML code you're using with a [YAML validation tool](https://jsonformatter.org/yaml-validator). 

:::

- Open the `metadata.yml` file to view the available metadata fields.

![Screenshot of the first few lines of the "metadata.yml" file](ow_metadata.png)

- To edit the file with your textbook's information, click on the pencil icon labelled "Edit this File" near the right side of the screen

![Screenshot of the editing icon](ow_edit-this-file.png)

- Use GitHub's online text editor to replace the [placeholder metadata values with your textbook's information](#metadata-in-yaml) (or any information to test it out). You can also delete any metadata fields you are not using, for example: `contributor`. 

- When you're finished with your edits, scroll to the bottom of the page to the "Commit changes" form. 

![Screenshot of the commit changes form](ow_commit.png)

::: box :::

This form will help you create a _commit_ in your repository. A commmit is a snapshot of a repository. Each commit is an opportunity to briefly log the purpose of your changes to the repository, which is helpful for keeping track of the project's development.

:::

- When you're ready to make the commit, you can keep the default setting for committing directly to the `main` branch. 

- Click on the "Commit changes" button.

This action will trigger a few things for your new textbook:

- Your textbook is built as a website as well as several additional output formats: PDF, LaTeX, EPUB, and DOCX
- These files are saved to a new "branch" in your repository called `gh-pages`

The `gh-pages` branch of your repository acts as your web server, where every file in this branch can be made accessible via the URL of your textbook. The URL for your textbook is created, by default, using this pattern: `https://USERNAME.github.io/REPOSITORY-NAME`

![Screenshot highlighting the number of branches, latest commit, and settings tab](ow_new-branch-settings.png)

While your website is ready to go live, it is not live yet. You'll have to make a change to the settings in your repository. 

- Click on the "Settings" tab from the home page of your repository
- In the left sidebar, click on the "Pages" link

![Screenshot highlighting the Pages link from the settings tab](ow_pages.png)

[GitHub Pages](https://pages.github.com) is a free static website hosting service from GitHub. In order to use this service for our textbook project, we'll need to point the web host to the source of our textbook's website files, which is the `gh-pages` branch of our repository.

- In the "Source" drop-down menu, select `gh-pages`
- Keep the section drop-down menu option as: `/(root)`
- Click save

After about one minute or so, your website will be live at: `https://USERNAME.github.io/REPOSITORY-NAME`

Each time you add, edit, or delete files in the `source` directory by committing changes to your repository, your textbook's website will refresh with the new content.

## Chapters

The `chapters/` folder includes two sample chapters formatted in Markdown for your reference: `01-introduction.md` and `02-chapter-example.md`. Lantern looks for files in this folder to build out the chapters of the textbook. 

By default, Lantern sets the order of the chapters using the file name. You can set the order of the chapters by adding a numeric prefix to the file name, `00-`, `01-`, `02-`, and so on. Anything after the hyphen (`-`) in the file name can be used for your reference to quickly identify the file. It is a best practice to use all lowercase words separated by hyphens (`-`) in filenames. For example:

1. Preface = `00-preface.md`
1. Chapter One = `01-introduction.md`
1. Chapter Two = `02-chapter-example.md`
1. Chapter Three = `03-probability.md`
1. Chapter Four = `04-binomial-distribution.md`

### Converting to Markdown

Most OER authors are not writing their manuscripts in Markdown (yet!), so we'll need to convert from more common file formats. The [example chapters](https://drive.google.com/drive/folders/1Fl__DhDXDFyoPmwX0CHpfj10qhOY3t0k?usp=sharing) are Google Docs that can be downloaded as `.docx` or `.odt` files, which are the file types that most word processing software use. 

Lantern includes a micro-workflow that will help you convert raw manuscript files from `.docx` or `.odt` to Markdown (`.md`).

- Download the example chapter files from the Google Drive, ignoring the README file, which we don't need
- Save the files to your computer.
- In your GitHub repository, click on the "source" folder, then click on the "preprocess" folder. The "preprocess" folder is intended for you to upload `.docx` or `.odt` files.

![Screenshot of the preprocess folder on GitHub](ow_preprocess.png)

- Click on the "Add file" drop-down menu and select "upload files"
- Upload one or more of the `.docx` or `.odt` files
- Click on the "Commit changes" button and (optionally) add a message about the uploads

This action will trigger the GitHub repository to convert your `.docx` or `.odt` chapter files to markdown, then add the markdown files to the `source/chapters/` folder. The action takes a minute or two to complete. This folder should now look something like this:

![Screenshot of the chapters folder on GitHub](ow_chapters.png)

You can now edit any of these files using GitHub's online text editor. 

### Editing Chapter Files

The conversion process between word processing formats and markdown won't be perfect, so you may need to spend some time correcting any formatting errors or removing any unnecessary markup. 

- Click on the "03-probability.md" file

![Screenshot of the Probabilities example chapter on GitHub](ow_probability.png)

GitHub will render the raw markdown as formatted HTML (without any styles) in order to give you a preview of how the content will look in its final state.

- Click on the pencil icon labelled "Edit this File" near the right side of the screen

The editor view of the file will allow you to edit the raw markdown contents as well as the file name itself (including the extension). We'll need to edit this file because there's a problem with the title of the chapter. 

![Screenshot of the Editor view for the Probabilities chapter](ow_edit.png)

The title of this particular chapter is not formatted properly. Instead of marking the title as a heading, the title is formatted as `**bold**`. This is a common problem with word processing formats, wherein headings are representing _visually_ but not _semantically_. Markdown uses specific syntax to mark contents as headings.

- Change the `**Probability**` heading to a proper markdown heading: `# Probability`

All chapter files using Lantern must begin with the title of the chapter formatted as a "Heading 1" or a first-level heading using the hashtag symbol (`#`). The number of hashtags corresponds to the level that heading represents (for example, one hashtag converts to a `<h1>` tag when the output is HTML). There are typically between 1 and 6 heading level options. 

- Now click on the "Preview" tab to see how that syntax change affected the output of the heading

![Screenshot of the HTML preview for the Probabilities chapter](ow_preview.png)

- There is another heading error in the file. Change `**Introduction to Probability Standard**` in line 19 to `## Introduction to Probability Standard` so that it represents a "Heading 2", or section heading.
- Scroll down to the bottom of the page and click on the "Commit changes" button to save these changes to your textbook

This completes the tutorial. The tutorial **only** covers setting up your workspace and adding your own content. To create a new project for the real world, you can repeat these steps then read the documentation on formatting, metadata, and customizations. 