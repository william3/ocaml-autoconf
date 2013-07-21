This archive contains standard, useful autoconf macros for detecting
OCaml, findlib, OCaml packages, etc.

It allows to compile ocaml project with benefits of autoconf features (C dependencies, library dependencies, multi platform, cross compilation). The ocaml compilation part can be handled with standard Makefiles or ocamlbuild.


This project contains improvements on the base project, with no activity since 2009, which home page is: http://ocaml-autoconf.forge.ocamlcore.org/. Improvements are :
* revised documentation entry
* improvements on use of autoconf macros in ocaml.m4
* access via github

Authors
-------

* william3
* Olivier Andrieu
* Jean-Christophe Filliâtre
* Richard W.M. Jones
* Georges Mariano
* Stefano Zacchiroli

Use
---

Copy ocaml.m4 into the autoconf macros directory of your project (usually m4/, but can be changed with AC_CONFIG_MACRO_DIR in configure.ac or configure.in). If it does not exists, create it :

	mkdir m4
	aclocal -I m4

Then refere to ocaml related macros from your configure.ac or configure.in file. Almost every OCaml project should use AC_PROG_OCAML first and probably AC_PROG_FINDLIB right after it.

You can build and install ocaml.m4 man page, then access it using :

	man ocaml.m4


Documentation
-------------

ocaml-autoconf is an extension to autoconf. You will need to learn how to use autoconf before, which is the most difficult part. One should follow a tutorial on the net.

Then have a look at an ocaml project that uses ocaml-autoconf : https://forge.ocamlcore.org/projects/lablgtk/

To understand the macros, the best way is to look at ocaml.m4 macro file, with the autoconf reference manual beside : http://www.gnu.org/software/autoconf/manual/index.html

a reference manual almost up to date, specific to ocaml macros, is available at http://forge.ocamlcore.org/docman/view.php/69/53/ocaml.m4.html

See the examples/ directory for a project skeleton using ocaml-autoconf,
autoconf, and automake for an ocaml project.

Building ocaml macros documentation
-----------------------------------

To build the manual page, you'll need 'perldoc' (part of Perl).

To build the manual page, etc., do:

	make

To install the manual page and macro centrally, do:

	make install

Development
-----------

Development home page: https://github.com/william3/ocaml-autoconf

to download repository, either use the 'Download' button of this webpage, or use :

	git clone https://github.com/william3/ocaml-autoconf

