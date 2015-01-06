---
layout: post
title: "Word Document to Asciidoc Conversion"
date: 2013-02-14 15:35
comments: true
sharing: true
categories: [Writing, Tools]
---

I had content in Word documents that I needed to convert to Asciidoc for our book. Here are the steps I found to work best:

1. Save Word doc as HTML
2. Encode as UTF-8
3. Use pandoc to convert from HTML to AsciiDoc
4. Use Sublime Text 2 search and replace (using some regular expressions) to strip out crazy things
5. Use Sublime Text 2 to perform any remaining formatting

##Save Word doc as HTML

Open the document in Word, and then save as a web page. _Select the "Save only Display Information into HTML" option when saving._ Exit from Word (and wave it goodbye as you do!).

##Encode as UTF-8

Open the html file in Sublime Text 2. Avert your eyes at the horror that is Word-formatted HTML. Reopen with encoding UTF-8 and save the file:

![Sublime Text 2 Reopen with Encoding]({{ site.url }}/assets/sublime-text-utf8.png)

If I don't recode as UTF-8, then the next step will fail with the error:

`pandoc: Cannot decode byte '\x6f': Data.Text.Encoding.decodeUtf8: Invalid UTF-8 stream`

##Use Pandoc to convert from HTML to AsciiDoc

Run [pandoc](http://johnmacfarlane.net/pandoc/). For example, the following command takes `ConventionSheet.htm` and converts it to the AsciiDoc file `file.asc`:

    pandoc -f html -t asciidoc -o file.asc ConventionSheet.htm

##Use Sublime Text 2 search and replace (using some regular expressions) to strip out crazy things

Weird single quotes need to go:

![Sublime Text 2 Replace backtick with single quote]({{ site.url }}/assets/sublime-text-backtick-replace.png)

If you had reviewing turned on in Word, then reviewer comments and changes will likely be present in the HTML. Remove these using a search and replace with the following Regex in the search field:

    \[line-through\]\*(.+)\*

When matched lines cross line breaks then you can use the single line option (`?s`) in your regex for search and replace:

    (?s)\[line-through\]\*.(.*?)\*

##Use Sublime Text 2 to perform any remaining AsciiDoc formatting

Monospace any regex or other special characters (these will cause problems for the AsciiDoc parser) in the document.

Edit the AsciiDoc document as you wish! Note that GitHub now natively displays AsciiDoc files (using [AsciiDoctor](http://asciidoctor.org/news/asciidoctor-announcement.html) behind the scenes), just as it does for Markdown.
