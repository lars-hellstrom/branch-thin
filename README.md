# branch-thin(-archival)
Scripts for simulating botanical tree growth with branch-thinning,
**also** the various simulation outputs and other datasets we (Lars Hellström, Linus Carlsson, Daniel Falster, Mark Westoby, and Åke Brännström) used in the paper _Branch thinning and the large-scale, self-similar structure of trees_.

Since the simulation outputs are significantly larger than the sources for the software used to produce them, this repository is primarily of interest to researchers wanting to scrutinise our research. Programmers who just want the software may instead get it from the sibling [branch-thin](https://github.com/lars-hellstrom/branch-thin) repository; that is also where further development of this software would happen.

## The data directory

The data directory has three subdirectories corresponding to how the data would be used.
- data/matlab contains Matlab scripts for generating various figures, and the data files used by those scripts. Some of the data here are not new, but reproduced from the literature.
- data/mpost contains MetaPost scripts for generating various figures.
- data/simulation contains the raw data output by the simulations; each file records hundreds or thousands of samples (one sample per row).
Each subdirectory has its own README with further details on the files. For historical reasons, some content appears both in data/matlab and data/simulations.

## README for the software-only [branch-thin](https://github.com/lars-hellstrom/branch-thin) repository.

These scripts are written in Tcl (see [www.tcl.tk](http://www.tcl.tk/) or [Wikipedia: Tcl](https://en.wikipedia.org/wiki/Tcl)), with source code following the [Literate Programming](https://en.wikipedia.org/wiki/Literate_programming) paradigm, [more precisely](http://mirrors.ctan.org/macros/latex/contrib/tclldoc/tclldoc.pdf) the [doc/DocStrip](http://mirrors.ctan.org/macros/latex/base/doc.pdf) variant of that paradigm that dominates in the LaTeX world. Accordingly, the source file is also a technical report on how the code works.

The executive summary is that the source proper is in the `.dtx` file. The accompanying `.ins` file is effectively a script that generates executable (well, rather "interpretable") sources from the `.dtx` file. Both `.ins` and `.dtx` files are primarily LaTeX files: running LaTeX on the `.dtx` file generates the typeset report, running it on the `.ins` file generates Tcl source files. Several variant scripts can be obtained by editing (or making a modified copy of) the `.ins` file, to include different sets of code modules from the `.dtx` file.

For convenience, a `.pdf` file with that typeset report is included in the distribution; more details on the structure of the sources can be found there.

What the scripts can output are primarily two things:
* Simulated trees, usually expressed as numeracy of organs of different ages.
* Figures (as [MetaPost](https://en.wikipedia.org/wiki/MetaPost) code) depicting individual simulated trees.
