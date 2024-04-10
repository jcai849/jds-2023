To the AE and Reviewer #1: Thank you for your comments. All have been helpful, and valuable in their prompted amendments.

# AE

> 1. Given the relevance, the paper is missing references like bigmemory which also talks about working on large matrices out of core. What are the similarities/differences? Respective pros/cons? Also given that this paper talks about HPC in R, CRAN task view on HPC would be a good resource to cite as well as draw references from.

Bigmemory has now been described and compared, CRAN HPC Task view also cited.

> 2. The authors should consider adding a little bit more summary on exactly what the contribution of this framework is. Introduction jumps into section 2 that immediately takes one into definitions without giving clear hints as to what are the contributions of this paper vs what is well-established.

A brief sentence in the introduction has been added as to the intent of the contribution (expressive and familiar means of describing distributed statistical algorithm in R), with the discussion including a descriptive list enumerating the unique combination of package features that allow for this.

> 3. In section 3, the authors say “Owing to considerations of space, this description of the user interface will focus solely on the key offerings of the largescaler user interface, with descriptions of other components and packages having a fuller treatment in Cairns (2023).” It’s not clear what is the key offering of the user interface. Do the authors mean the largescalemodels API?

Correct -- language has been corrected to highlight this.

> 4. In the sentence, “Given some vector x that is broken up into j chunks, yielding j subvectors of length i” based on the formula below, "i" is not a length but rather another index for within the chunk.

Excellent point -- I had drafted a description of a ragged array, but missed this in the reformulation. Corrected.

> 5. In equation (3), S_{0,j} = S_{n_i, j-1}. This seems wrong. If chunks are indexed by j, then each chunk should have n_j observations not n_i observations. And “i” should index an observation in jth chunk. I think it should be S_{n_(j-1), j-1}? Having clear notations before describing an algorithm would help clarify these issues.

It took me too long right now in trying to piece together my own notation, and after paging it in I can see that you're definitely correct. I've added a description of the notations prior, and corrected the equation to match.

> 6. In section 4.1, equation 5, the index “i” in the formulation of lasso only represents a single chunk. Either the i’s should be removed or the loss should be represented as some sort of summation over i

I see that -- removed the indices, it reads better that way.

> 7. The author should clearly mentions that Boyd et al (2011) is the reference for ADMM algorithm for Lasso that the author describes.

Added explicitly that the ADMM LASSO algorithm described in this text is from Boyd et al (2011).

> 8. The ADMM algorithm description also needs defining the terms first along with the functions mentioned there in; such as S() etc. Without it the algorithm is hard to parse for the uninitiated.

Added a description of rho as the penalty parameter, and S as soft thresholding operator, along with a definition of S, as formulated by Boyd et al (2011)

> 9. In Section 4.2, in the lasso vs largesclaer comparison, the authors show the data being loaded from different file paths; host1:~/filepath/A1 and host1:~/filepath/b1 etc. So do the authors assume these chunks have been precomputed? Does largesclarer provide functionality for this chunking? Otherwise one needs to verify that A_i and b_i are properly aligned.

Added a sentence to address this: In this illustration of the LASSO with \pkg{largescaler}, it is assumed that the input matrix chunk files have been precomputed and written to disk, which \pkg{largescaler} provides the facility for.

> 10. The introduction of several functions in this tabular description without giving context first is a bit confusing. Authors should consider first describing those functions. E.g. S() is never defined which I imagine stands for the soft thresholding function?

Correct -- this was done purposefully, but it did lack explanation. Added an explanation: starting values for parameters \texttt{rho} and \texttt{lambda}, and the function definition for the soft thresholding operator \texttt{S} are passed over in this illustration because they are not of particular interest, though are available in the source code provided in the Supplementary Materials.

> 11. In the results, the authors should consider providing some comparison of timings with the size of the dataset for both standard in-core LASSO (say through glmnet) and their implementation. This will help drive home the point better.

Agreed -- this is being worked on, but realistically won't make it to this paper.

> 12. The real world application that authors included should come with some descriptions of the data i.e. data dimensions, what the data is about etc. If this is a real world dataset, some comments on what the data is about would also be helpful. If it is simulated data, that should be mentioned as well.

Simulated data in this example -- details of dimension added

> 13. The limitation vis a vis windows etc, should be mentioned in the discussion/conclusion section.

Added, along with associated limitations.

# Referee 1

> 1. Literature review seems incomplete. The bigmemory family and the differences in the design in contrast with large scale R would be helpful in the introduction. Specifically for the illustration, since the authors used lasso as an example, its contrast with R package biglasso would be worth discussing.

The bigmemory collection is single-node, so was excluded from comparison with a distributed system. They are both in the broad field of HPC in R however, so some review has been added, with the caveat for comparability.

> 2. Any equation should be part of a sentence and should be punctuated.

Some Equation X sentences were missing a full-stop. These have been added.

> 3. Equation (3): why not merge line 3 to line 2?

Yes, that is better. Corrected.

> 4. Equation (5): First, f(x) should not contain i.  Define f and g after the optimization problem. Or define them first with the appropriate texts.

Corrected.

> 5. Define acronyms and give necessary explanations for completeness. For example, ADMM may not be familiar to many readers. It's defined later but should be moved to the first occurrence.

ADMM now moved in brackets after first occurance. LASSO is better known by the acronym so leaving as-is.

> 6. It seems that less than necessary care was put into the presentation of the algorithms on page 8 and 9.  Functions that are not from base R need to be explained. For example, what is S()? Undefined notations include rho, Ref, N, and M_N2. In addition, the spacing of the code could be improved.

Explanation now included to explain their absence (their definition distracts from the core point that's being made, and are available in the supplementary material). Ref is provided by largescaleobjects, and is now given an explanation. M_N2 was a typo. Code spacing could be improved, but requires a bit more TeX wizardry than I can provide and still be sure it's able to compile on more than just my machine.

> 7. There are still occurrences of largescaler. Should they be largemodels? BTW, the README of the largescaler project on GitHub still has the old package names.

largescaler is the platform, with the packages comprising the platform being:
- orcv
- chunknet
- largescaleobjects
- largescalemodels
The introduction has been updated to emphasise largescaler as the platform, with discussion of the component packages introduced in Table 1.

> 8. It seems to me that large scale R is a platform. It'd be helpful if the authors could list the tasks for a user or developer needs to work on when developing an implementation for a new model, for example, generalized linear model lasso or Cox model. This could be added as a discussion in Section 3.

Good point. Deeper discussion of required tasks for each package is given in a forthcoming thesis, referenced within this paper as Cairns (2024)

> 9. Rephrase those sentences that start with a lower case symbol or notation.

Corrections have been made

> 10. The tar ball in the supplement did not give a structured folder. It seems to be a single binary file. So I was unable to check the example code myself.

It could be due to being gzipped -- extract using `tar xzf <filename>` if you hadn't done so -- will reupload a newly gzipped tarball for supplementary along with this.

> 11. The Supplementary Materials section should contain a table of contents of the supplements and the GitHub or R-forge links.

Added

> 12. The limitation to Linux platform can be discussed in the Discussion section.

Added, along with associated limitations.
