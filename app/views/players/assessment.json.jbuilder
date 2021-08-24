json.data @assessments.each do |a|
  json.id a.id
  json.types "assessments"
  json.attributes {
    json.rating a.rating
    json.player_id a.player.id
    json.tournament a.tournament.id
    json.assessment_type "Tournament"
    json.created_As a.created_at
    json.updated_as a.updated_at
  }
  json.relationships {
    json.assessment_notes {
      json.data a.notes.each do |note|
        json.id note.id
        json.type "assessment_notes"
      end
    }
  }
end