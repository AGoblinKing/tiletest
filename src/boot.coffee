define ["lib/jquery"], () ->
  requirejs.config
    baseUrl: "lib"
    packages: [{name: "tiletest", location: "../tiletest"}]
    paths: 
      "config": "../config"
    shim:
      "backbone":
        deps: ["underscore"]
        exports: "Backbone"
      "jquery":
        exports: "$"
      "jade":
        exports: "jade"
      "underscore":
        exports: "_"

  require ["tiletest"]