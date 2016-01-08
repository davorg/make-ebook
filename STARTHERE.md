# make-book - Start Here

You'll need to edit some files before you can start making a book.

## Makefile

The first line of this file looks like this

    book = yourbookname

You should edit "yourbookname" to be a filename-friendly version of your book's title.
Or some other value that you want to use as the filename for the output files.

Of course, you don't need to edit this value at all. If you don't, you will end up with
files called yourbookname.epub, yourbookname.mobi and yourbookname.pdf.

## metadata.xml

This file contains various metadata values that are used when building your ebook.
The bits you will want to change are clearly marked between sets of double square brackets.
Don't forget to remove the square brackets when you edit the values.

The values you need to change are:

* [[YOUR TITLE HERE]] - your book's title
* [[SURNAME, FORENAME]] and [FORENAME SURNAME]] - the author's name in two different formats
* [[YOUR PUBLISHER HERE]] - the name of the publisher
* [[YYYY-MM-DD]] - the publication date
* [[2016]] - the copyright year

*Note:* I should certainly find a way for the last two values to be generated automatically.

## title.txt

The title and author's name need to be in this file too. Once again the places that you need to
update are marked with double square brackets. Once again, you should remove these square brackets
when you fill in your information.

## chapters.txt

This file starts off empty. It contains a list of the files that make up your book - one file per
line. This makes it easy to re-order chapters.

It's up to you how you organise your text and, therefore, exactly what this file contains. I like
to create a directory called "chapters" and put the chapter files in there.
