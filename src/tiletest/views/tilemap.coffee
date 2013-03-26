define [
  "backbone"
  "tpl!../templates/tilemap"
], (Backbone, TileMapTPL) ->
  height = $(window).height()

  class TileMap extends Backbone.View
    attributes:
      class: "bordered tilemap"

    getJSON: ->
      rows = (("grass" for c in [0..9]) for r in [0..9])

      return {
        rows: rows
      }
    render: ->
      @$el.css 
        height: height
        width: height
      @$el.html TileMapTPL.render(@getJSON())
      return this
