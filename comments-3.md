> I’d recommend spelling out/defining “MPI” is at its first reference (Page 2 paragraph 1), as it may not be common knowledge for readers unfamiliar with parallel computing.

Added the following: ... allowing for direct access to the Message Passing Interface (MPI) library for parallel computing

> The last sentence of the introduction is “A summary of features is given in Section 5, and further details on largescaler are provided in Cairns (2024).”
> Given the reference to Section 5, it’s worth outlining in this last paragraph what the reader can expect from Sections 2-4.

Added a paragraph outlining the paper as a replacement.

> Remove “further details on largescaler are provided in Cairns (2024)” (since it is referenced in context in Section 3) or move this line to Section 5, and articulate there what additional detail will be reviewed in that work. (Having this reference to a forthcoming thesis in the introduction currently reads like an unsatisfactory explanation of the contribution of *this* paper because it appears at the point where that is usually articulated.)

Removed the reference.

> The second paragraph of Section 3 notes “Each of the users are served by the aforementioned packages making up the framework” but the packages have not yet been mentioned or associated with the respective users at that point.

Caught it; rephrased

> Table 1 caption reads as incomplete — “to enable the use” of what?

Quoted phrase was extraneous and incomplete; removed.

> The notation of equations 1 and 2 is still somewhat confusing, and I think would benefit from better language or notation: “Consider some vector x that is broken up into j chunks, yielding j subvectors each indexed by i.” I think you mean i is the index for elements in each x_j, but then i is used both as index of original vector x and its j subvectors. In equation 2, n is not defined as length.

Both points have been rectified with an amended clarification and reordering of notation.

> Please add an unnumbered section "Supplementary Material”; as previously noted by Reviewer 1, this Supplementary Material section should contain a table of contents of the supplements and the GitHub or R-forge links. See https://jds-online.org/journal/JDS/article/1340/info for an example.

Added above bibliography

> Please fix the following typos:
> The plural of API should be APIs (not “API’s”).
X
> Page 2, paragraph 2, line 2: “This collection allows for for distributed…” -> delete second “for”
X
> Page 2, paragraph 3
> line 2: need a space between “matrix” and Kane citation.
X
> line 9: “The package big lasso [is] described in detail…”
X
> Page 6, paragraph 4, line 1: “…but the total length of The distributed” -> lowercase “the”
X
> R is stylized differently throughout the paper (e.g. Section 1 vs. Section 4). Please standardize.
X
> In section 4.1, paragraph 1, last sentence “large scale R” -> “largescaler”
X
