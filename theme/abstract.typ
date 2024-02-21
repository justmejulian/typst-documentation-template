#let abstract(body) = {
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

  set par(
    leading: 1em,
    justify: true
  )

  // --- Abstract ---
  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", "Abstract"))

  body

  v(1fr)
}
