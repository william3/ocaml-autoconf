This archive contains standard, useful autoconf macros for detecting
OCaml, findlib, OCaml packages, etc.

It allows to compile ocaml project with benefits of powerful autoconf features (C dependencies, library dependencies, multi platform, cross compilation). The ocaml compilation part can be handled with standard Makefiles or ocamlbuild.


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

Copy ocaml.m4 into the autoconf macros directory of your project (usually m4/, but could be changed with AC_CONFIG_MACRO_DIR). Then you would want to add the following lines to configure.ac :

	m4_include([m4/ocaml.m4])
	AC_PROG_OCAML()
	AC_PROG_FINDLIB

You are ready to include ocaml-autoconf macros in configure.ac. Once it is done, use something like this:

	autoreconf -fi

Documentation
-------------

ocaml-autoconf is an extension to autoconf. You will need to learn how to use autoconf before, which is the most difficult part. One should follow a tutorial on the net.

Then have a look at some ocaml projects that uses ocaml-autoconf : 
* https://forge.ocamlcore.org/projects/lablgtk/
* http://www.cairographics.org/cairo-ocaml/

ocaml-autoconf macros reference manual :
* one good way is to look at ocaml.m4 file, along with the [autoconf reference manual] [1] beside
* also, the [ocaml-autoconf reference manual] [2] is almost up to date

  [1]: http://www.gnu.org/software/autoconf/manual/index.html
  [2]: http://forge.ocamlcore.org/docman/view.php/69/53/ocaml.m4.html "ocaml-autoconf reference manual"

See the examples/ directory for a project skeleton using ocaml-autoconf,
autoconf, and automake for an ocaml project.


Optional installation of macro and man page
-------------------------------------------

To build the manual page, you'll need 'perldoc' (part of Perl).

To build the manual page, etc., do:

	make

To install the manual page and macro centrally, do:

	make install

You can then use :

	man ocaml.m4


Development
-----------

Development home page: https://github.com/william3/ocaml-autoconf

to download repository, either use the 'Download' button of this webpage, or use :

	git clone https://github.com/william3/ocaml-autoconf

