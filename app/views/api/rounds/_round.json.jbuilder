json.id round.id
json.name round.name
json.course do
  json.partial! round.course, partial: "api/courses/course", as: :course
end