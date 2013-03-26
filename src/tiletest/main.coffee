define "eor", [
  "backbone" 
], (Backbone) ->
  class AppRouter extends Backbone.Router
    routes: 
      "": "default"
      ":page": "default"

    default: () ->
      $("body").html "works"

  new AppRouter()

  Backbone.history.start()