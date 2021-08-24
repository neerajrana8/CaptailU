json.data @players.each do |p|
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