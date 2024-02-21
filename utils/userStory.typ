#let count = state("x", 0)

#let userStory(body) = {
  count.update(x => x + 1)
  [*US-#count.display():* #body #linebreak()]
}
