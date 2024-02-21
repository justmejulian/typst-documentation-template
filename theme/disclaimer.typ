#let disclaimer(
  title: "",
  author: "",
  submissionDate: none,
) = {
  set document(title: title, author: author)  
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "Helvetica Neue"
  let sans-font = "Helvetica Neue"

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  // --- Disclaimer ---
  v(75%)
  text("I confirm ...")

  v(15mm)
  grid(
      columns: 2,
      gutter: 1fr,
      "Munich, " + submissionDate, author
  )

  pagebreak()
}
