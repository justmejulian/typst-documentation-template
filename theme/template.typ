#import "constant.typ": body-font, sans-font

#import "../utils/getCurrentHeading.typ": getCurrentHeading

#let project(
  title: "",
  degree: "",
  program: "",
  advisor: "",
  author: "",
  body,
) = {

  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: "1",
    number-align: center,
  )

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  show math.equation: set text(weight: 400)

  // --- Headings ---
  show heading: set block(below: 1.25em, above: 1.75em)
  show heading: set text(font: body-font)
  set heading(numbering: "1.1")
  show heading: it => {
    if it.level == 1 {
      pagebreak(weak: true) // Add a pagebreak before each chapter. (Heading level 1)
    }
    if (it.level >= 4){
      block(it.body) // Disable numbering for headings below level 3.
    } else {
      it
    }
  }

  // Reference first-level headings as "chapters"
  show ref: it => {
    let el = it.element
    if el != none and el.func() == heading and el.level == 1 {
      [Chapter ]
      numbering(
        el.numbering,
        ..counter(heading).at(el.location())
      )
    } else {
      it
    }
  }

  // --- Paragraphs ---
  set par(leading: 1em)

  // --- Citations ---
  set cite(style: "alphanumeric")

  // --- Figures ---
  show figure: set text(size: 0.85em)

  set page(numbering: "i")
  counter(page).update(1) // reset page count

  // --- Table of Contents ---
  outline(
    title: {
      text(font: body-font, 1.5em, weight: 700, "Contents")
      v(15mm)
    },
    indent: 2em
  )

  v(2.4fr)
  pagebreak()

  // Main body.
  set par(justify: true, first-line-indent: 2em)

  // Page Header
  set page(header: rect(stroke: (bottom: 0.5pt))[
      #getCurrentHeading()
      #h(1fr)
      #author
  ])

  // Main body.
  set page(numbering: "1")
  counter(page).update(1) // reset page count

  pagebreak()
  body
  pagebreak()

  // List of figures.
  heading(numbering: none)[List of Figures]
  outline(
    title: none,
    target: figure.where(kind: image),
  )

  // List of tables.
  heading(numbering: none)[List of Tables]
  outline(
    title: none,
    target: figure.where(kind: table)
  )

  // Appendix.
  pagebreak()
  heading(numbering: none)[Appendix A: Supplementary Material]
  include("appendix.typ")

  pagebreak()
  bibliography("../bibliography.bib")
}
