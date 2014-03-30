class WeddingApp.Rsvp extends Batman.Model
  @resourceName: 'rsvps'
  @storageKey: 'rsvps'

  @persist Batman.RailsStorage

  @encode 'name', 'email', 'note', 'rsvp'
  @encodeTimestamps()

