#let pintorita(body, caption: [], factor: none) = {
  import "@preview/pintorita:0.1.1"

  let content = {
    if factor == none {
      pintorita.render(body.text)
    } else {
      pintorita.render(body.text, factor: factor)
    }
  }

  figure(
    content,
    caption: caption
  )
}

#let pintoritaFile(url, caption: [], factor: none) = {
  let raw = raw(read(url))
  pintorita(raw, caption: caption, factor: factor)
}
