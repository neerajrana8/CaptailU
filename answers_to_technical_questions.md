1. It took me two days to code it. And I took 1 day to decide the structure and architecture of application

2. Out of the box ruby 2.7 offers numbered parameters that I use a lot.
eg: 

json.data @notes.each do
  json.type "Assessments Notes"
  json.attributes {
    json.note _1.note
    json.note_id _1.id
    json.assessment_id _1.assessment_id
   }
end

3. I had to do performance issue check using new relic for one of our client. I found new relic really good and it's able to give somewhat correct reports and help in monitoring the system.

4. 
"Myself": {
 "Name": "Neeraj Rana",
 "Age": "28",
 "Hobbies": "Engineering thigs, new age technology, music, photography",
 "Passion": "Learning new technologies and architecture"
}