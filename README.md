# llavac

## Write JAVA in Welsh (wait, what?)

Short half-hour project to write a wrapper for the `javac` JAVA compiler, realistically providing no more than a gimmick.

The program is *very* naïve, and currently only carries out simple tokenised string replacement of a 'Welsh' JAVA source file to create a temporary 'English' source file, which itself is compiled before being deleted.

Replacement is executed on a currently-incomplete set of JAVA keywords (e.g. `public`, `class`, `void`, `static`, `final`).


## Prerequisites

* Perl interpeter (you already have this, unless [Windows](http://www.perl.org/get.html#win32))
* Command line JAVA compiler (`javac`)


## Example usage

Take a look at the example JAVA source file (in Welsh), which can be compiled by `llavac.pl` and then ran as a JAVA program as follows:

```bash
$ ./llavac.pl Example.java
$ java Example
```

Note that any compiler errors will be in English.
