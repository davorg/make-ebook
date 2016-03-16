book = yourbookname
chapters = $(shell cat chapters.txt)

epub: book

book: $(book).epub

mobi: $(book).mobi

pdf: $(book).pdf

$(book).mobi: $(book).epub
	kindlegen -verbose $(book).epub

$(book).epub: $(chapters) epub.css
	pandoc -o $(book).epub title.txt $(chapters) --epub-metadata=metadata.xml --toc --toc-depth=2 --epub-stylesheet=epub.css --epub-cover-image=covers.png

$(book).pdf: $(book).epub
	ebook-convert $(book).epub $(book).pdf

clean:
	rm -f $(book).{pdf,epub,mobi}

