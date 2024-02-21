#let getCurrentHeading() = {
  locate(loc => {
    // Find if there is a level 1 heading on the current page
    let nextMainHeading = query(selector(heading).after(loc, inclusive: false), loc).find(headIt => {
     headIt.location().page() == loc.page() and headIt.level == 1
    })
    if (nextMainHeading != none) {
      // If there is a level 1 heading on the current page, don't show in header
      return " "
    }
    // Find the last previous level 1 heading
    let lastMainHeading = query(selector(heading).before(loc), loc).filter(headIt => {
      headIt.level == 1
    }).last()
    return lastMainHeading.body
  })
}
