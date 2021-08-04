# Desktop Workflow

The desktop workflow brings all of the required processing software to your computer. It's designed to remove GitHub as a dependency so that you can use any web hosting platform for publishing your open textbooks. In this tutorial, we'll walk you through the process of setting up your computer and running basic processing commands. 

::: box :::

The basic workflow involves:

- Managing source manuscript files
- Editing plain text using formatting rules
- Running build commands for generating publication formats

All within the Visual Studio Code text editor:

![Screenshot of a Visual Studio Code Workspace with Lantern files](dw_workspace.png)

:::

**Prerequisites**

You'll need a Windows, macOS, or Linux computer with the ability to install open source software packages from the command line (we'll teach you how!). For example, on a Windows computer, you'll need the ability to login as an administrator to install certain programs and enable advanced operating system features. 

::: box :::

Lantern depends on [GNU Bash](https://www.gnu.org/software/bash/) and [GNU Make](https://www.gnu.org/software/make/). These programs work fine on macOS and Linux computers, but they require some extra programs in order to run on Windows computers. We recommend the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) for which we provide some guidance below.   

:::

## Text Editing

There are two main types of documents we use to write and edit text: [plain-text](https://en.wikipedia.org/wiki/Plain_text) and [rich text](https://en.wikipedia.org/wiki/Formatted_text). Plain text exposes the characters within a document, whereas rich text displays the formatting features and styles. 

| File Contents | File Extension          | Editors                     |
| ------------- | ----------------------- | --------------------------- |
|   Plain text  | `.xml`, `.html`, `.md`  | Notepad, TextEdit, VS Code  |
|   Rich text   | `.docx`, `.rtf`, `.odt` | Microsoft Word, Google Docs |

Most of us are trained to use rich text editors: emails, word documents, content management systems (e.g. WordPress). This is for good reason: they're easy to use and we need them for everyday things. For academic publishing purposes, plain text offers some advantages over rich text, as Tenen and Wythoff ([2014](https://doi.org/10.46430/phen0041)) explain: 

> Plain text both ensures transparency and answers the standards of long-term preservation. MS Word may go the way of [Word Perfect](https://en.wikipedia.org/wiki/WordPerfect) in the future, but plain text will always remain easy to read, catalog, mine, and transform. Furthermore, plain text enables easy and powerful versioning of the document, which is useful in collaboration and organizing drafts. Your plain text files will be accessible on cell phones, tablets, or, perhaps, on a low-powered terminal in some remote library. Plain text is backwards compatible and future-proof. Whatever software or hardware comes along next, it will be able to understand your plain text files.

We'll need a plain text editor to create metadata (in YAML) and format content (in Markdown).

### Installing Visual Studio Code

We recommend installing [Visual Studio Code (VS Code)](https://code.visualstudio.com/) as your text editor, but you're welcome to use any other text editor you prefer. Visit the website to [download](https://code.visualstudio.com/) and [install](https://code.visualstudio.com/docs/setup/setup-overview) VS Code. 

::: box :::

**Windows Installation Tips:**

When prompted to "Select Additional Tasks" during installation, double-check that the "Add to `PATH`" option is checked. We also think it's helpful to check the boxes for the other Additional Tasks, including:

_Windows Users:_

- Add "Open with Code" action to Windows Explorer file context menu 
- Add "Open with Code" action to Windows Explore directory context menu
- Register Code as an editor for supported file types

:::

[VS Code](https://code.visualstudio.com/) can be customized to your workflow with [Extensions](https://marketplace.visualstudio.com/). You might be interested in trying a few extensions to help with formatting Markdown documents. We recommend [VS Code Icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons), which includes a nice set of icons to help distinguish between file types and folders.

## Windows Subsystem for Linux

_You can [skip to the next section](#install-homebrew) if you are using macOS or Linux._

Lantern uses software that requires a [Unix-like](https://en.wikipedia.org/wiki/Unix-like) operating system. Since Windows does not behave like a Unix system, we'll need to install one before working with Lantern. Luckily, recent versions of Windows 10 support the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about), which allows you to install and run a full [Linux distribution](https://en.wikipedia.org/wiki/Linux_distribution) within your normal Windows environment. 

::: box :::

Setting up WSL on Windows 10 could take about an hour and might be a little confusing. That's OK! It's a very new and exciting feature that is opening up a whole new world of possibilities with Windows. If you stick with it, you'll have a powerful, new, and free publishing system on your computer!

:::

Microsoft maintains [instructions on how to install WSL on a Windows 10 computer](https://docs.microsoft.com/en-us/windows/wsl/install-win10). We recommend installing WSL 2 with the [latest Ubuntu version is 20.04 LTS](https://www.microsoft.com/en-us/p/ubuntu-2004-lts/9n6svws3rx71?rtc=1&activetab=pivot:overviewtab), but WSL 1 and any other Linux distribution might work too. The instructions assume you will have some familiarity with the Windows command line interface, specifically [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.1). 

We highly recommend following [Microsoft's instructions for a manual installation](https://docs.microsoft.com/en-us/windows/wsl/install-win10#manual-installation-steps) as written. If you're on an employer-provided computer, you might not have access to Windows Insider Program, so the "Simplified Installation" might not be available to you. We also provide an opinionated set of instructions below. 

### Installing Windows Subsystem for Linux (WSL) with Ubuntu

::: box :::

This setup requires about 5GB of disk space. While we provide specific steps and commands, we recommend you double-check [Microsoft's documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10#manual-installation-steps) to ensure the commands are accurate as they may change over time.

:::

WSL is a feature in Windows that lets you run a Linux operating system _within_ your normal Windows operating system. Linux operating systems are available in a [variety of _distributions_](https://en.wikipedia.org/wiki/Linux_distribution#Widely_used_GNU-based_or_GNU-compatible_distributions). Each distribution is a collection of software packages that use the Linux kernel. This set of instructions will install WSL with [Ubuntu](https://ubuntu.com/) 20.04 LTS as the Linux distribution.  

::: box :::

**Video Demonstration of Next Few Steps**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/6onU19_wYK8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:::

#### Open a Terminal in VS Code as an Administrator

- Right-click on the VS Code program icon
- Select "Run as Administrator"
- Login with an Administrator username and password if prompted
- Click on Terminal in the menu bar
- Select New Terminal; this will open a PowerShell command prompt

#### Checking Your System Type: Most Windows computers have either x64 or ARM64 systems. If you're not sure which one you're using, follow these steps:

- In the VS Code Terminal, type or copy and paste this into the prompt (capitalization is important): `systeminfo | find "System Type"`
- Press Enter

_You should see a message that says something like: ` x64-based PC`_. 

#### Checking Your Windows 10 Version: There are several **versions** and **builds** of Windows 10. If you're not sure which version and build you have, follow these steps:

- Hit the Windows Key
- Type "run" to find the Run app
- Press Enter
- Type "winver"
- Press Enter

_The pop-up message will include both version and build numbers for your Windows 10 software._ 

- For x64 systems: you need version 1903 or higher, with Build 18362 or higher.
- For ARM64 systems: you need version 2004 or higher, with Build 19041 or higher.
- Builds lower than 18362 do not support WSL 2. See if you can update your version of Windows.

**If you meet the system requirements, you can move ahead to the next steps. If you don't, try using the online workflow instead.**

**Enable WSL on Your Computer**

The following command can be copied and pasted into the PowerShell terminal prompt from within VS Code. You'll need to be running VS Code as an Administrator, as we did [above](#open-a-terminal-in-vs-code-as-an-administrator)).

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

**Enable Virtual Machine Features**

In the same PowerShell terminal prompt from within VS Code, run: 

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

#### Restart your computer

#### Based on your system type (e.g. x64), Download the latest Linux kernel update package [from Microsoft](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package).

::: box :::

**Video Demonstration of Next Few Steps**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/9f__fo5dxXc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

VS Code can be set up to work with your Windows Subsytem for Linux (WSL) setup. VS Code will likely detect your WSL setup and ask if you'd like to install recommended extensions. Click the "Install" button when prompted.

![Screenshot of VS Code Extensions pop-up](dw_wsl-extensions-vs-code.png)

If you didn't see that prompt when opening VS Code, [follow these instructions](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode#:~:text=Visit%20the%20VS%20Code%20install,WSL%20using%20the%20code%20command.) on configuring youre VS Code editor with your WSL instance. You can skip the Git and Windows Terminal sections as those are optional.  

:::

**Set WSL 2 as your default version -- In PowerShell, run:**

```
wsl --set-default-version 2
```

**Download Ubuntu 20.04 LTS from the [Microsoft Store](https://www.microsoft.com/store/apps/9n6svws3rx71)**

- From the Store page, click on "Get" (you can close the prompts requesting you to login with or create a Microsoft account)
- Wait for the download to finish; it will take a few minutes
- Click on the Launch button when the download finishes

**Congrats! You now have an Ubuntu Operating System within your Windows computer!**

This will launch a new terminal window for Ubuntu. In the task bar, we recommend you right-click the Ubuntu icon and pin the program to your task bar (or Start menu) for easy access to it. 

![Screenshot of Windows Desktop with "Pin to Task Bar" option displayed](dw_pin-ubuntu-to-taskbar.png)

**Create a User for Ubuntu**

The first time you open the Ubuntu terminal, you will be prompted to create a new user profile. This user is separate from the user profile you use to log in to your Windows computer. You can set this to whatever you want (even reusing the same Windows credentials you have); just be sure to remember the password!

::: box :::

**Creating a User for your Ubuntu OS**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/D9e3osliSSo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:::

#### Update Your Ubuntu System Packages

It's usually a good idea to keep your system packages up to date with the latest versions. Since you have a clean install of Ubuntu 20.04 LTS, it's worth checking to make sure all software dependences are current with their latest release. We can do this with a few commands:

In the terminal, run (you may be prompted to enter the password you set for your Ubuntu user):

```
sudo apt update
```

In the terminal, run:

```
sudo apt upgrade
```

*You will be asked to confirm the installation of new versions of software; enter `Y` and press enter.*

#### Finding Your Ubuntu Files with Windows Explorer

Your WSL/Ubuntu system has its own file system that is separate from your Windows files (e.g. Documents, Pictures, Videos, etc.). Both are accessible by your Windows Explorer program. Windows treats your WSL/Ubuntu system as a Network Drive.

![Screenshot of WSL in Windows 10 File Explorer](dw_wsl-files.png)

You can navigate to these files with Windows explorer quickly by typing in `\\wsl$` in the Explorer address bar.

![Screenshot of WSL path in Windows 10 File Explorer Address Bar](dw_wsl-files-path.png)

## Install Homebrew

[Homebrew](https://brew.sh) is a software package manager that simplifies the process for installing, uninstalling, and upgrading software from the command line. Visit the [Homebrew homepage](https://brew.sh/) for instructions on installing Homebrew on your operating system. The instructions involve copying and pasting one line in your terminal prompt. You might be prompted to enter your password in the terminal before it continues. This is the password you use to login to your computer; or, in the case of Windows Subsystem for Linux/ Ubuntu, the password you set for your Linux user. 

This process will take a 5-7 minutes, so let it run for a while! You'll know when it's finished when the prompt returns to a dollar sign (`$`).

![Screenshot of Homebrew install steps in a terminal window](dw_homebrew-install.png)

::: box :::

**Windows/ WSL and Linux Users:**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/MEWUsSUzZ7Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

***

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/OJejWc8Bxng" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Be sure to read through the section beginning with "Next Steps" in your terminal prompt after the initial Homebrew install is complete. Run the commands that Homebrew provides to "Add Homebrew to your PATH" and "Install the Homebrew dependences". Check your terminal for the exact commands.

![Screenshot of Ubuntu Terminal displaying helpful commands after installation](dw_homebrew-commands.png)

The follow commands are ***examples***. Do not run _these_ commands. Run the ones your terminal prompt displays as they will be specific recommendations for your system.

```
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/USERNAME/.profile
```
and: 

```
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

You may be asked to install additional dependencies:

```
sudo apt-get install build-essential
```

and 

```
brew install gcc
```

:::

To verify the installation, run:

```
brew --version
```

If you get a version number in response, Homebrew was successfully installed.

## Install Pandoc

We can use Homebrew to install [Pandoc](https://pandoc.org) and [Pandoc Crossref](https://github.com/lierdakil/pandoc-crossref). Pandoc is our main document converter. We use Pandoc to convert manuscript files from Word processing formats to Markdown, then Markdown to our publishing output formats (e.g. HTML, LaTeX, DOCX, etc.). Pandoc Crossref is a filter that helps us label and number equations, figures, and images in order to produce links within our textbook projects. 

::: box :::

**Video Demonstration for all OS platforms**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/MTJGKfr-XWY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:::

We can install both of these with Homebrew by executing the following command (>1min): 

```sh
brew install pandoc pandoc-crossref
```

To verify the installations, run:

```
pandoc --version
```

and

```
pandoc-crossref --version
```

If you get version numbers in response to these commands, both of these programs were successfully installed.

## Install TinyTeX

_You can skip this section if you already have LaTeX installed on your system. If you think you might have LaTeX, but are not sure, open a terminal and run `latex --version`. If you get a version number, you're good! If not, read on..._

Lantern uses [LaTeX](https://www.latex-project.org/) to make PDFs. LaTeX is a document production system that is commonly used for formatting mathematical notation and advanced typesetting. 

Lantern uses a minimal LaTeX distribution called [TinyTeX](https://yihui.org/tinytex/). Follow the installation instructions on the TinyTeX homepage for your system:

### macOS:

Open your Terminal app and run these commands (requires password):

```
sudo chown -R $(whoami) /usr/local/bin
curl -sL "https://yihui.org/tinytex/install-bin-unix.sh" | sh 
```

Now reload the terminal session with:

```
source ~/.profile
```

### Windows WSL with Ubuntu:

::: box :::

**Video Demonstration of Installing TinyTeX on Ubuntu (WSL)**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube.com/embed/_3pOnq7A1aY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:::

Open your Ubuntu (WSL) terminal and run this command:

```sh
wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh
```

Now reload the terminal session with:

```
source ~/.profile
```

You now have have a minimal version of LaTeX installed. You can now use common LaTeX commands, including `tlmgr`, `pdflatex`, and `xelatex` (You won't need to know these commands to use Lantern, but just letting you know that they are available). 

### Verify TinyTex/LaTeX Installation

TinyTeX installs several LaTeX packages to help you use the system. An important one is called TeX Live Manager, which will manage your LaTeX packages. Specific LaTeX packages are required for compiling PDF documents. Lantern PDF templates do not require any additional LaTeX packages, but you might want to [install additional LaTeX packages](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages) if you decide to customize the templates. 

You can verify your LaTeX installation by checking the version of TeX Live Manager with this command:

```
tlmgr --version
```

If you get a version number in response, then TinyTeX / LaTeX is properly installed!

## Creating Your Desktop Workspace

::: box :::

**Video Overview**

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/3S3k8HsvsQM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We've just downloaded and setup a few things. Here's what they do:

VS Code

: This is our text editor. We'll use this as our primary desktop workspace for managing files, writing YAML metadata about our textbooks, and typesetting our manuscript content in Markdown, and running build commands for our publication outputs. 

Terminal

: This will where we run our commands for building the textbook publication formats. We'll use VS Code's integrated terminal feature.

TinyTeX

: This is our LaTeX distribution (i.e. the software the runs the LaTeX typesetting system). It runs in the background, but it will handle our PDF formatting, styles, mathematics notation, and page settings. 

:::

We'll need a place on our computers to store our textbook files. Let's create a folder to contain our Lantern projects. For these steps, open your terminal:

Check your current directory:

```
pwd
```

_This will return the full path to your prompt's current directory._

Create a new directory:

```
mkdir lantern-projects
```

Change into that directory:

```
cd lantern-projects
```

Open the current directory in VS Code:

```
code .
```

### Using the Terminal

Lantern uses Bash terminal commands to move between directories and install software. Bash terminal commands can be used on all macOS, Linux, or Windows/WSL operating systems. VS Code has an integrated Terminal feature. To open the terminal in VS Code, click on the "Terminal" option in the menu bar and select "New Terminal". This will open your default terminal.

![Screenshot of opening the terminal in VS Code](dw_vscode-new-terminal.png)

::: box :::

**Bash Terminal Cheat Sheet**: We'll use Bash commands to navigate our file system, rather than using a graphical file explorer program.

- `pwd`: will display the full path of the current directory
- `cd`: will change directories to a target directory
- `ls`: will list the files and folders within your currect directory
    - `cd lantern-projects`: will change directories to a directory called `lantern-projects`
    - `cd ..`: will change directories up one level to the parent directory of the current directory
    - `cd ~`: will change directories to your "home" directory, which is the default directory that you start with when you open your Terminal app

:::

![Screenshot of Ubuntu terminal after running commands to create a workspace folder](dw_pwd-mkdir-cd.png)

## Download Lantern

Now that you have all of the required software for the desktop workflow, you're ready to download the Lantern files to your computer. [Lantern](https://github.com/nulib-oer/lantern) is a template repository hosted on [GitHub](https://github.com). We won't get too much into Git or Github, but we will use it to download the files. Git is pre-installed with Ubuntu (as well as Windows/WSL) and macOS. 

**Open your terminal and download Lantern by running this command:**

```sh
git clone https://github.com/nulib-oer/lantern.git test-project
```

::: box :::

_This is a [Git](https://git-scm.com/) command that downloads a copy of the Lantern files from GitHub to your computer and stores them within a new folder called `test-project`. This is the process you can use over and over whenever you want to start a new textbook projects with Lantern's template repository._

:::

![Screenshot of macOS Terminal in VS Code Downloading the Lantern repository to the computer via `git clone` command](dw_git-clone-lantern.png)

**Navigate to the new folder containing Lantern files by running this command in your terminal:**

```sh
cd test-project
```

**Open the `test-project` folder in VS Code by clicking on the File option in the menu bar and selecting "Open...". Microsoft has some [really good videos on navigating the VS Code interface](https://code.visualstudio.com/docs/getstarted/introvideos).**

![Screenshot of VS Code open to the Lantern folder](dw_lantern-vscode.png)
_These icons are generated by the [vscode-icons extension](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons), which is highly recommended!_

**You have now set up your desktop workspace for using Lantern!**

## Lantern Files and Folders

Lantern comes with a few files and folders you'll be using to add and edit your manuscript content. All of these files and folders are contained in the `source` directory. These are the **only** files and folders you will need to edit to use Lantern for your textbook project. Click on the `source` directory to view its files and folders.

![Screenshot of the `source` directory](dw_source-dir.png)

- `chapters/`: This folder contains the textbook chapter files

- `images/`: This folder contains the textbook images for figures, logos, covers, etc.

- `preprocess/`: If you add `.docx`, `.odt`, or `.tex` files to this folder, Lantern will convert these files to Markdown and add them to the `chapters/` folder with the `make markdown` command (more on this below)

- `metadata.yml`: This file defines the bibliographic metadata for your textbook

- `references.bib`: This file contains the bibliography for your textbook in [BibTex format](http://www.bibtex.org/Format/)

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/kM58ybg1LrI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Metadata

Textbooks need bibliographic metadata in order to be indexed by search engines and library catalogs. Lantern stores metadata about the textbook in a YAML file. The information stored in the YAML file will be used to fill the templates for each of the publication formats. 

- Open the `metadata.yml` file to view the available metadata fields.

![Screenshot of the Metadata file in VS Code](dw_metadata.png)

- Edit the file by replacing the placeholder metadata values with your textbook's information. You could use an example of your own to practice, or you could visit our Google drive to download some sample chapters.

- When you're finished with your edits, save the file: Control + S 

You can fill out the this file using [all available metadata fields](#metadata-in-yaml).

## Chapters

The `chapters/` folder includes two sample chapters formatted in Markdown for your reference: `01-introduction.md` and `02-chapter-example.md`. Lantern looks for files in this folder to build out the chapters of the textbook. 

By default, Lantern sets the order of the chapters using the file name. You can set the order of the chapters by adding a numeric prefix to the file name, `00-`, `01-`, `02-`, and so on. Anything after the hyphen (`-`) in the file name can be used for your reference to quickly identify the file. It is a best practice to use all lowercase words separated by hyphens (`-`) in filenames. For example:

1. Preface = `00-preface.md`
1. Chapter One = `01-introduction.md`
1. Chapter Two = `02-chapter-example.md`
1. Chapter Three = `03-probability.md`
1. Chapter Four = `04-binomial-distribution.md`

The title of the chapter as it displays in the final textbook is set by the first line of the chapter file. The first line of each chapter file must begin with one hashtag symbol (`#`) to represent a first-level heading (or `<h1>` if you're familiar with [HTML headings](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements)). For example, the chapter file `01-introduction.md` contains the first line: `# Introduction to Vegetable Lasagna`, which renders thusly:

**HTML:**

![Screenshot of Chapter Title from HTML output](dw_html-title.png)

::: box :::

You can preview the HTML rendering of the Markdown within VS Code by pressing `Ctrl+Shift+V` with your keyboard. Lantern provides some special syntax for specific chapter components, but basic Markdown will render properly, such as headings, paragraphs, emphasis, italics, lists, links, tables, and images. 

![Screenshot of Markdown Preview (with Math)](dw_markdown-preview.png)

_The Math rendering in the preview screen is handled by the VS Code [Markdown+Math extension](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath)._

:::

**PDF:**

![Screenshot of Chapter Title from PDF output](dw_chapter-title.png)

**LaTeX:**

```
\chapter{Introduction to Vegetable Lasagna}
```

### Converting Word Processing Formats to Markdown

Most OER authors are not writing their manuscripts in Markdown (yet!), so we'll need to convert from more common file formats. The [example chapters](https://drive.google.com/drive/folders/1Fl__DhDXDFyoPmwX0CHpfj10qhOY3t0k?usp=sharing) are Google Docs that can be downloaded as `.docx` or `.odt` files, which are the file types that most word processing software use. 

Lantern includes a micro-workflow that will help you convert raw manuscript files from `.docx` or `.odt` to Markdown (`.md`).

- Download the example chapter files from the Google Drive, ignoring the README file, which we don't need
- Save the files to the `source/preprocess/` folder in your Lantern project directory
    - Drag and drop the files to the `/source/preprocess/` folder within VS Code`; or
    - Drag and drop the files to the `/source/preprocess/` folder using your file explorer ([additional guidance for Windows users](#finding-your-ubuntu-files-with-windows-explorer))
- In your terminal window, run this command:

```
make markdown
```

::: box :::

**Opening Your Project Folder in Explorer or Finder**

VS Code makes it easy to open your project folder in a more familiar setting. Right-click on a file or folder in VS Code and select "Reveal in Explorer" (on Windows) or "Reveal in Finder" (on macOS) to easily access your files using your systems file system application:

![Screenshot of "Reveal in Explorer" option in VS Code](dw_reveal-in-explorer.png)

:::

This command will run a script that will use Pandoc to convert the `.docx` or `.odt` files in the `source/preprocess/` folder to Markdown files that will be saved in the `source/chapters/` folder. 

You can now edit any of these files using your text editor (VS Code). 

### Editing Chapter Files

The conversion process between word processing formats and markdown won't be perfect, so you may need to spend some time correcting any formatting errors or removing any unnecessary markup. 

- Open on the "03-probability.md" file in the `source/chapters/` folder with VS Code. We'll need to edit this file because there's a problem with the title of the chapter. 

The title of this particular chapter is not formatted properly. Instead of marking the title as a heading, the title is formatted as `**bold**`. This is a common problem with word processing formats, wherein headings are representing _visually_ but not _semantically_. In other words, the headings are human-readable but not machine-readable. Markdown uses specific syntax to mark contents as headings.

- Change the `**Probability**` heading to a proper markdown heading: `# Probability`

- There is another heading error in the file. Change `**Introduction to Probability Standard**` in line 19 to `## Introduction to Probability Standard` so that it represents a "Heading 2", or section heading.

- Type Ctrl + S (or File > Save in the VS Code menu bar) to save these changes to your textbook

## Building Publication Outputs

Lantern includes several commands you can run in your terminal to make your textbook. These commands build the publishing output formats for your textbook. Each of these commands will place the output files in a new directory within your project folder called `public/`:

- `make html`: Creates an `index.html` file for your entire textbook project and new copies of the images within the `source/images/` folder.

- `make pdf`: Creates a `textbook.pdf` file for your textbook with images embedded in appropriate places throughout the text.

- `make epub`: Creates a `textbook.epub` file for your textbook with images embedded in appropriate places throughout the text. This file can be used with e-book readers.

- `make docx`: Creates a `textbook.docx` file for your textbook with images embedded in appropriate places throughout the text. This file can be edited by other instructors interested in reusing or remixing the textbook content using Microsoft Word or other word processing software.

- `make latex`: Creates a `textbook.tex` file for your textbook. This file can be edited by other instructors interested in reusing or remixing the textbook content using LaTeX.

- `make textbook`: Does all of the above. 

You can run these commands as often as you'd like. You can also start fresh by running the `make clean` command, which will delete the `public` folder. The `public` is intended to contain the textbook files in various formats so that you can share these files however you'd like, including by uploading these files to any web hosting services without any further editing or processing. 

## Uploading to a Web Server

Once you're done editing your textbook, go to your terminal and type in `make textbook` to generate a fully-fuctional static website that you can be uploaded to any web server or hosting service. This command creates and places all of your output files within a folder called `public`. The contents within the `public` folder are intended to be ready for distribution with the public.


This part is optional, but to demonstrate the process of uploading the files to a web server, you can use [Netlify Drop](https://app.netlify.com/drop). [Netlify](https://netlify.com) is a web hosting service that specializes in static websites. Here's a video to demonstrate the Netlify Drop feature: 

<iframe style="display:block;margin:auto" width="560" height="315" src="https://www.youtube-nocookie.com/embed/-LRlQ_jaLAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

If you want to give it a try, drag and drop the `public` folder from your computer to Netlify Drop to see your textbook project live on the web. From there, you can use the Netlify to manage your website, such as adding a custom domain name. 