define [
  "backbone"
  "tpl!../templates/tilemap"
], (Backbone, TileMapTPL) ->
  class TileMap extends Backbone.View
    getJSON: ->
      return {
        columns: @model.get "columns"
        rows: @model.get "rows"
        cells: @model.cells.toJSON()
      }
      
    render: ->
      console.log TileMapTPL.render(@getJSON())
