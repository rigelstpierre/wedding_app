class WeddingApp.RsvpsController extends WeddingApp.ApplicationController
  routingKey: 'rsvps'

  index: (params) ->
    @set('rsvps', WeddingApp.Rsvp.get('all'))

  show: (params) ->
    WeddingApp.Rsvp.find params.id, @errorHandler (rsvp) =>
      @set('rsvp', rsvp)

  edit: (params) ->

  new: (params) ->

  create: (params) ->

  update: (params) ->

  destroy: (params) ->

