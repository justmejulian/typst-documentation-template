#import "./theme/template.typ": *
#import "./theme/cover.typ": cover
#import "./theme/disclaimer.typ": disclaimer
#import "./theme/acknowledgement.typ": acknowledgement
#import "./theme/abstract.typ": abstract

#import "metadata.typ": *

#cover(
  title: title,
  subtitle: subtitle,
  program: program,
  school: school,
  advisor: advisor,
  author: author,
  expert: expert,
  proofReader: proofReader,
)

#disclaimer(
  title: title,
  author: author,
)

#acknowledgement[Stuff]

#abstract[
  Note:
  1. *paragraph:* What is the motivation of your thesis? Why is it interesting from a scientific point of view? Which main problem do you like to solve?
  2. *paragraph:* What is the purpose of the document? What is the main content, the main contribution?
  3. *paragraph:* What is your methodology? How do you proceed?
]

#show: project.with(
  title: title,
  program: program,
  advisor: advisor,
  author: author,
)

// Heading without numbering
#heading(numbering: none)[Pre-Introduction]

Info

#pagebreak()

#include "./sections/introduction.typ"
#pagebreak()
#include "./sections/background.typ"
#pagebreak()
#include "./sections/relatedwork.typ"
#pagebreak()
#include "./sections/requirementsAnalysis.typ"
#pagebreak()
#include "./sections/systemDesign.typ"
#pagebreak()
#include "./sections/caseStudy.typ"
#pagebreak()
#include "./sections/summary.typ"

