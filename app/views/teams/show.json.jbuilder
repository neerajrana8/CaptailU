team = @team
json.data  {
  json.type "teams"
  json.id team.id
  json.attributes {
    json.name team.name
    json.age_group team.age_group
  }
  json.relationships {
    json.players {
      json.data team.players.each do |p|
        json.id p.id
        json.type p.type
      end
    }
  }
  json.included team.players.each do |p|
    json.id p.id
    json.type p.type
    json.attributes {
      json.first_name p.first_name
      json.last_name p.last_name
      json.height p.height
      json.weight p.weight
      json.birthday p.birthday
      json.graduation_year p.graduation_year
      json.position p.position
      json.recruit p.recruit
    }
  end
}