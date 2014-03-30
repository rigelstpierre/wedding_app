class WeddingApp.RsvpsController extends WeddingApp.ApplicationController
  routingKey: 'rsvps'

  @beforeAction 'fetchRsvp', only: ['show', 'edit']

  index: (params) ->
    @set('rsvps', WeddingApp.Rsvp.get('all'))

  show: (params) ->

  edit: (params) ->

  new: (params) ->
    @set('rsvp', new WeddingApp.Rsvp)

  create: (params) ->
    @rsvp.save (err, rsvp) =>
      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        @redirect rsvp

  update: (params) ->
    @rsvp.save (err, rsvp) =>
      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        @redirect rsvp

  destroy: (node, event, context) ->
    rsvp = if context.get('rsvp') then context.get('rsvp') else @rsvp
    rsvp.destroy (err) =>
      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        @redirect '/rsvps'

  fetchRsvp: (params) ->
    WeddingApp.Rsvp.find params.id, @errorHandler (rsvp) =>
      @set('rsvp', rsvp)
