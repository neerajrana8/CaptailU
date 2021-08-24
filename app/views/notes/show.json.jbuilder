n = @note
json.data {
  json.type "Assessments Notes"
  json.attributes {
    json.note n.note
    json.assessment_id n.assessment_id
  }
}