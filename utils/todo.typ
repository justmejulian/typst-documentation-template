#import "@preview/pintorita:0.1.1"

#let rectangle(body, color) = {
  rect(
    width: 100%,
    radius: 10%,
    stroke: 0.5pt,
    fill: color,
    body
  )
}

#let todo(body) = {
  let text = "ToDo: " + body
  rectangle(text, lime)
}

#let note(body) = {
  let text = "Note: " + body
  rectangle(text, silver)
}

