json.data @events.each do |event|
  json.type "events"
  json.id event.id
  json.tournament event.tournament.name
end