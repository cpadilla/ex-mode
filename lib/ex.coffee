class Ex
  write: ->
    if atom.workspace.getActiveTextEditor().getPath() isnt undefined
      atom.workspace.getActiveEditor().save()
    else
      atom.workspace.getActivePane().saveActiveItemAs()
  w: => @write()
  tabnext: -> atom.workspace.getActivePane().activateNextItem()
  tabn: => @tabnext()
  tabprevious: -> atom.workspace.getActivePane().activatePreviousItem()
  tabp: => @tabprevious()
  tabclose: -> atom.workspace.getActivePane().destroyActiveItem()
  tabc: => @tabclose()

module.exports = Ex
