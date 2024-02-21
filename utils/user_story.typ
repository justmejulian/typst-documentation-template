#let count = state("x", 0)

#let user_story(body) = {
  count.update(x => x + 1)
  [*US-#count.display():* #body #linebreak()]
}
