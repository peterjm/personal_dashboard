class Dashing.Uptime extends Dashing.Widget

  @accessor 'status', ->
    "Up"

  @accessor 'lastChange', ->
    new Date
