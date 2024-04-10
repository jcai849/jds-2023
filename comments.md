To the reviewer:

Thank you very much for your comments.
We have uploaded an improved version of the paper that seeks to meet the given critique.
The following are our responses to the comments:

> 2. Clarification of naming convention:
> The authors refer to largescaler as an “functioning system,” “interface,” and “framework” made up of four packages. It is also the name of a package within that framework intended for use by a researcher. Please clarify this naming convention.

The naming convention grew organically over time; that is, there was no naming convention.
This comment requiring clarification is absolutely correct, and some of the packages have been renamed under a much needed and hopefully clearer pattern.

The framework remains as ``Large Scale R''.
The following table describes the package renames, with the wording in the paper updated to match.

| Previous Name    | New Name           |
|------------------|--------------------|
| largescalemodelr | largescalemodels   |
| largescaler      | largescaleobjects  |


> 1. Reproducible code and output:
> As noted on the JDS website, software-focused article submissions within the "Computing in Data Science" section "are similar to those in the Journal of Statistical Software. They are not referencing manuals but vignettes that introduce the methods being implemented as well as the usage of the software with reproducible code chunks." 
> 
> The paper includes a working example of distributed LASSO in Section 4.2, however only abstract code is provided (e.g. file A instead of a real file for illustration), rather than live code. to provide a thorough review, we feel there needs to be a more complete demonstration of largescaler's use with reproducible code chunks and their corresponding output. Demonstrations should be similar to those published in JSS (see, e.g., an example article at https://doi.org/10.6339/21-JDS1020). The JDS page limit is 20, so the authors have plenty of space provide an illustration with real data that can be followed step by step by a reader.

This comment is also very valid.
Please see the amended section for example output, and note the inclusion of runnable code in the provided tarfile.

> 3. Software:
> We would appreciate the package and its necessary dependencies noted in the .gz file provided by the authors (orcv, chunknet) be made available on CRAN, or otherwise a convincing argument made as to why they are not. JDS would rather not publish articles on a package that has no clear plan of long-term maintenance, and availability on CRAN is some assurance of the durability of the software.

The principal contribution of the Large Scale R project has been the exploration and application of distributed computing concepts to R, and the demonstration of such capabilities and allowances through a proof of concept framework.
As the collection of packages are volatile research components, there are no guarantees as to the stability of the provided interfaces.
With this in mind, the package co-authors feel that to publish the packages on CRAN at this stage will pollute CRAN with yet another unreliable interface.
The framework remains totally accessible via Rforge and github, and is licensed as MIT, so there is no risk of it being vapourware.
The underlying concepts of the framework are the important deliverables, however, and that is the main communicaton intention of this paper's submission - this has not been made clear in the first submission, and the wording has been updated to reflect this.

At a more pragmatic level, the use of process forks precludes this package from use on Windows; the declaration of performance on all Unix systems is limited by the use of barriers in the low-level code interfacing pthreads, which isn't available on MacOS. Therefore only 4.4BSD and Linux systems are supported in the use of this framework, which makes acceptance on CRAN rather difficult. We have been working on a shim that may aid this, however, and look likely to support MacOS as well in the near future.
