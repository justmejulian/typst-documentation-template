#import "./theme/template.typ": project
#import "./theme/cover.typ": cover
#import "./theme/disclaimer.typ": disclaimer
#import "./theme/acknowledgement.typ": acknowledgement
#import "./theme/abstract.typ": abstract

#import "metadata.typ": *

// Document metadata
#set document(title: title, author: author, date: datetime.today())

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

#acknowledgement[
  A ZHAW Thesis Template, created using Typst @justmejulian-github.\ \
  The Following sections are from the TUM Thesis Template @tum-thesis-template. 
  They are included here to show the structure of a typical thesis.
]

#abstract[
  Note:
  1. *paragraph:* What is the motivation of your thesis? Why is it interesting from a scientific point of view? Which main problem do you like to solve?
  2. *paragraph:* What is the purpose of the document? What is the main content, the main contribution?
  3. *paragraph:* What is your methodology? How do you proceed?
]

// -- Main Content --

#show: project.with(
  title: title,
  program: program,
  advisor: advisor,
  author: author,
)

#include "./sections/preIntroduction.typ"
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
