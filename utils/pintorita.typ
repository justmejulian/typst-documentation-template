#import "@preview/pintorita:0.1.1"

#let pintora(body, caption: [], factor: none) = {
  let content = {
    if factor == none {
      pintorita.render(body.text)
    } else {
      pintorita.render(body.text, factor: factor)
    }
  }

  figure(
    content,
    caption: caption,
  )
}

#let pintoraFile(url, caption: [], factor: none) = {
  let raw = raw(read(url))
  pintora(raw, caption: caption, factor: factor)
}
