tournament = @tournament
json.data {
  json.id tournament.id
  json.type "Tournaments"
  json.attributes {
    json.name tournament.name
    json.city tournament.city
    json.state tournament.state
    json.start_date tournament.start_date
  }
  json.relationships {
    json.teams {
      json.data tournament.teams do |team|
        json.id team.id
        json.type "team"
      end
    }
    json.players {
      json.data tournament_players(tournament.id).each do |p|
        json.id p.id
        json.type p.type
      end
    }
  }
}
