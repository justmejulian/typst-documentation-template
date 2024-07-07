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
  image("../figures/logo.png", width: 50%),
  caption: [The ZHAW Logo]
)

==== Wrapped Image

#import "@preview/wrap-it:0.1.0": wrap-content

#let boxed = box(figure(
  image("../figures/logo.png", width: 10em),
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

#import "../utils/pintorita.typ" : pintorita

=== UML

#pintorita(
```
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
```,
caption: [UML Diagrams]
)

=== Class Diagram

#pintorita(
```
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
```,
caption: [Class Diagram],
factor: 0.5
)
