# branch-thin
Scripts for simulating botanical tree growth with branch-thinning

These scripts are written in Tcl (see [www.tcl.tk](http://www.tcl.tk/) or [Wikipedia: Tcl](https://en.wikipedia.org/wiki/Tcl)), with source code following the [Literate Programming](https://en.wikipedia.org/wiki/Literate_programming) paradigm, [more precisely](http://mirrors.ctan.org/macros/latex/contrib/tclldoc/tclldoc.pdf) the [doc/DocStrip](http://mirrors.ctan.org/macros/latex/base/doc.pdf) variant of that paradigm that dominates in the LaTeX world. Accordingly, the source file is also a technical report on how the code works.

The executive summary is that the source proper is in the `.dtx` file. The accompanying `.ins` file is effectively a script that generates executable (well, rather "interpretable") sources from the `.dtx` file. Both `.ins` and `.dtx` files are primarily LaTeX files: running LaTeX on the `.dtx` file generates the typeset report, running it on the `.ins` file generates Tcl source files. Several variant scripts can be obtained by editing (or making a modified copy of) the `.ins` file, to include different sets of code modules from the `.dtx` file.

For convenience, a `.pdf` file with that typeset report is included in the distribution; more details on the structure of the sources can be found there.

What the scripts can output are primarily two things:
* Simulated trees, usually expressed as numeracy of organs of different ages.
* Figures (as [MetaPost](https://en.wikipedia.org/wiki/MetaPost) code) depicting individual simulated trees.
