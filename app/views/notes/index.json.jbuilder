json.data @notes.each do |n|
  json.type "Assessments Notes"
  json.attributes {
    json.note n.note
    json.note_id n.id
    json.assessment_id n.assessment_id
   }
end