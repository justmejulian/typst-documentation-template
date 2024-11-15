#let store = state("dict", (US: 0))
#let update(dict, key) = {
    let count = dict.at(key, default: none)
    if count == none {
      dict.insert(key, 1)
    } else {
      dict.insert(key, count + 1)
    }

    // Print out the dictionary for debugging
    // panic(repr(dict))

    return dict
}

#let userStory(body, key: "US") = {
  store.update(x => update(x, key))

  let count = context store.get().at(key)

  [*#key\-#count:* #body #linebreak()]
}
