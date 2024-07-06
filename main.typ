#import "./theme/template.typ": project
#import "./theme/cover.typ": cover
#import "./theme/disclaimer.typ": disclaimer
#import "./theme/acknowledgement.typ": acknowledgement
#import "./theme/abstract.typ": abstract

#import "metadata.typ": *

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
A ZHAW Thesis Template, created using Typst @justmejulian-github.\
\
The Following sections are from the TUM Thesis Template @tum-thesis-template. 
They are included here to show the structure of a typical thesis.
]

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

A ZHAW Thesis Template, created using Typst @justmejulian-github.\
\
The Following sections are from the TUM Thesis Template @tum-thesis-template. 
They are included here to show the structure of a typical thesis.

== Typst functions

Typst Docs can be found here: 
#link("https://typst.app/docs/")[typst.app/docs]

=== Image

#figure(
  image("./figures/logo.png", width: 50%),
  caption: [The ZHAW Logo]
)

==== Wrapped Image

#import "@preview/wrap-it:0.1.0": wrap-content

#let boxed = box(figure(
  image("./figures/logo.png", width: 10em),
  caption: [A figure],
), inset: 0.5em)

#wrap-content(boxed)[
  #lorem(40)
]

=== Table

#figure(
  table(
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Timing results],
)

== Diagrams

Built using
#link("https://pintorajs.vercel.app/")[Pintora]

#import "@preview/pintorita:0.1.1"

#show raw.where(lang: "pintora"): it => pintorita.render(it.text)

=== UML

```pintora
mindmap
@param layoutDirection TB
+ UML Diagrams
++ Behavior Diagrams
+++ Sequence Diagram
+++ State Diagram
+++ Activity Diagram
++ Structural Diagrams
+++ Class Diagram
+++ Component Diagram
```

=== Class Diagram

#show raw.where(lang: "pintora"): it => pintorita.render(it.text, factor:0.5)

```pintora
classDiagram
  class Fruit {
    <<interface>>
    float sweetness
    -float age

    float getAge()
  }

  class Apple {
    float softness
    {static} Apple fromString(str)
  }

  %% There are so many kind of fruits
  Fruit <|-- Apple
  Fruit <|-- Kiwi
  Fruit <|-- Banana

  Fruit "many" --* "1" Bag: packed intro
```

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
