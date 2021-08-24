json.data @notes.each do
  json.type "Assessments Notes"
  json.attributes {
    json.note _1.note
    json.note_id _1.id
    json.assessment_id _1.assessment_id
   }
end