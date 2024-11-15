// #import "@preview/codly:1.0.0": codly, codly-init
// #show: codly-init.with()

// todo: add some spacing and styling

#let code(code, caption: []) = {
  // todo: panic if code is not raw
  figure(
    code,
    caption: caption,
    gap: 1.5em,
  )
}
