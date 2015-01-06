class DeferredModal
  constructor: (template) ->
    @template = template
    @result = $.Deferred()

  createModal: ->
    deferredElement = $.Deferred()
    ko.renderTemplate(
      @template,
      this,
      {
        afterRender: (nodes) ->
          deferredElement.resolve _(nodes).find (n) ->
            n.nodeType == 1
      },
      @emptyDiv()
    )
    deferredElement

  reject: ->
    @result.reject()

  resolve: ->
    @result.resolve()

  show: ->
    @createModal().pipe($).pipe ($ui) =>
      $ui.modal
        keyboard: false
        show: true

      @result.always ->
        $ui.modal "hide"

      $ui.on "bs.modal.hidden", ->
        $ui.each (i, e) ->
          ko.cleanNode e
        $ui.remove()

      @result

  emptyDiv: ->
    div = document.createElement("div")
    document.body.appendChild(div)
    div
