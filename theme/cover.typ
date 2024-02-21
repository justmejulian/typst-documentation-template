#let cover(
  title: "",
  subtitle: "",
  program: "",
  school: "",
  supervisor: "",
  advisor: "",
  author: "",
  expert: "",
  proofReader: "",
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 20mm, bottom: 40mm),
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

  // --- Cover ---
  align(center, image("../figures/logo.png", width: 80%))

  v(15mm)

  align(center, text(font: sans-font, 2em, weight: 700, title))

  v(5mm)

  align(center, text(font: sans-font, 1.5em, weight: 400, subtitle))

  v(15mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, program))

  v(5mm)

  align(center, text(font: sans-font, 1.3em, weight: 100, school))

  v(15mm)

  align(center,
    box(
      align(left,
        grid(
          columns: 2,
          column-gutter: 2em,
          row-gutter: 1em,
          strong("Author: "), author,
          strong("Version: "), datetime.today().display(),
          strong("Advisor: "), advisor,
          strong("Expert: "), expert,
          strong("Proof-Reader: "), proofReader,
        )
      )
    )
  )

  pagebreak()
}
