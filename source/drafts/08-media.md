# Media Assets

Lantern supports adding images and embedding video or audio from streaming services. 

## Images

Add image elements to your textbook chapters using this syntax:

```
![Alt Text / Image Caption](filename.png "optional image title")
```
Images are block elements that need to be on their own lines, separated by empty lines, like paragraphs. 

Example from the [Bibliographies](#bibliographic-citations) chapter:

```
![Screenshot of the BibTex Citation Displayed in the Browser](bib_gs-citation.png)
```

### Managing Your Images

Store your images in the `/source/images/` folder. We recommend using simple filenames to easily reference your images in the source text and also manage them within the folder. When you're building your output formats, the images will be copied to the `/public/` folder.

Image file names must not contain any spaces or special characters. We recommend using lowercase filenames with underscores (`_`) or hyphens (`-`) to separate words. 

[PNG](https://en.wikipedia.org/wiki/Portable_Network_Graphics) and [JPEG](https://en.wikipedia.org/wiki/JPEG) file formats give the best results. We recommend PNG files for computer graphics and JPEG files for photos. Be mindful of the image dimensions. You can use basic image viewing software on your computers to scale the image to no wider than 800px. This will help keep the file size small, lower your storage needs, and improve the page load / download performance of your resulting output formats.

Large images can slow down your website's load time, add to storage costs, and make the size of your PDF output file larger than it needs to be. Therefore, we recommend using image compression tools to help reduce file size for serving on the web or embedding in PDFs. [Squoosh](https://squoosh.app/), [TinyPNG](https://tinypng.com/), and [TinyJPG](https://tinyjpg.com/) are free web services that will compress your PNG and JPG files. 

## Video and Audio

Lantern does not provide a media streaming mechanism on its own, but you can use the embed code from any media streaming service to include video or audio within the HTML version of your project. 

Streaming services typically provide embed code as part of the "Share" feature for the item. Embed code is raw HTML code.

Example Video from YouTube:

```html
<iframe width="560" height="315" src="https://www.youtube.com/embed/YPo1nlT2XMg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

Example Audio from SoundCloud:

```html
<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/767415286&color=%230d1024&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe><div style="font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;"><a href="https://soundcloud.com/user-463918057" title="NU Digital Learning" target="_blank" style="color: #cccccc; text-decoration: none;">NU Digital Learning</a> · <a href="https://soundcloud.com/user-463918057/episode-14-open-textbooks" title="Episode 14: Open Textbooks" target="_blank" style="color: #cccccc; text-decoration: none;">Episode 14: Open Textbooks</a></div>
```

Copy the emded code from the streaming service and paste it directly within the Markdown document where you want the media embed to appear in the text. 