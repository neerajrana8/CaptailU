event = @event
json.data {
  json.type "event"
  json.id event.id
  json.name event.name
  json.tournament event.tournament.name
}