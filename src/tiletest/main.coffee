define [
  "backbone"
  "./views/tilemap"
  "css!./styles/tiletest"
], (Backbone, TileMapView, TileTestCSS) ->
  class AppRouter extends Backbone.Router
    routes: 
      "": "default"
      ":page": "default"

    default: ->
      tmV = new TileMapView()
      $("body").html tmV.render().el
      tmV.afterRender()
      
  new AppRouter()

  Backbone.history.start()