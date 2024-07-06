#import "@preview/polylux:0.3.1": *
#import themes.university: *

#set text(font: "Helvetica Neue")

#let author = "Julian Visser"
#let title = "WatchOS Velocity Recording"
#let subtitle = "VT1"
#let date = datetime.today().display()

#show: university-theme.with(
  short-author: subtitle,
  short-title: date,
  color-a: rgb("#0064A6"),
  color-b: rgb("#5C9CC6"),
  color-c: rgb("#FFF"),
)

#title-slide(
  authors: (author),
  title: title,
  subtitle: subtitle,
  date: date,
  institution-name: "ZHAW School of Engineering",
  logo: image("zhaw-logo.png", width: 50mm)
)

#slide(title: [Slide title], new-section: [The section])[
  #lorem(40)
]

#focus-slide(background-color: rgb("#0064A6"))[
  *Another variant with an image in background...*
]

#matrix-slide[
  left
][
  middle
][
  right
]

#matrix-slide(columns: 1)[
  top
][
  bottom
]

