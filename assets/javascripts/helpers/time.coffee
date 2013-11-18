Batman.Filters.durationSince = (datetime) ->
  Math.floor((new Date() - datetime) / 1000)

Batman.Filters.durationInWords = (duration) ->
  return "" unless duration
  "" + duration

Batman.Filters.datetime = (datetime) ->
  "yesterday"
