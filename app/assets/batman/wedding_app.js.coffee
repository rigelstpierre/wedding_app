#= require batman/es5-shim

#= require batman/batman
#= require batman/batman.rails

#= require jquery
#= require batman/batman.jquery

#= require_self

#= require_tree ./lib
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./views

Batman.config.pathToHTML = '/assets/html'

class WeddingApp extends Batman.App

  @resources 'rsvps'

  @root 'rsvps#index'

(global ? window).WeddingApp = WeddingApp
