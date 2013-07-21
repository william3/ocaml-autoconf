PACKAGE	= ocaml-autoconf
VERSION	= 1.1

prefix  = /usr/local
datadir = $(prefix)/share
mandir  = $(datadir)/man

INSTALL = install
MKDIR_P = mkdir -p

all: man ocaml.m4.txt
doc: man ocaml.m4.txt ocaml.m4.html

man: ocaml.m4.1

ocaml.m4.1: ocaml.m4.pod
	pod2man -c "Autoconf macros" --release "$(PACKAGE)-$(VERSION)" $< > $@

ocaml.m4.txt: ocaml.m4.pod
	pod2text $< > $@

ocaml.m4.html: ocaml.m4.pod
	pod2html $< > $@

clean:
	rm -f *~ ocaml.m4.1 ocaml.m4.txt

dist: ocaml.m4.1 ocaml.m4.txt
	rm -rf $(PACKAGE)-$(VERSION)
	mkdir $(PACKAGE)-$(VERSION)
	install -m 0644 \
	  LICENSE README \
	  Makefile \
	  ocaml.m4 \
	  ocaml.m4.1 ocaml.m4.pod ocaml.m4.txt \
	  $(PACKAGE)-$(VERSION)/
	tar -cf - $(PACKAGE)-$(VERSION) | \
	  gzip --best > $(PACKAGE)-$(VERSION).tar.gz
	rm -rf $(PACKAGE)-$(VERSION)

install: install-macro install-man

install-macro:
	$(MKDIR_P) $(DESTDIR)$(datadir)/aclocal/
	$(INSTALL) -m 0644 ocaml.m4 $(DESTDIR)$(datadir)/aclocal/

install-man:
	$(MKDIR_P) $(DESTDIR)$(mandir)/man1/
	$(INSTALL) -m 0644 ocaml.m4.1 $(DESTDIR)$(mandir)/man1/

.PHONY: man install-macro install-man
