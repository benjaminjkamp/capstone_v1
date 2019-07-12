json.id round.id
json.name round.name
json.course do
  json.partial! round.course, partial: "api/courses/course", as: :course
end

json.matches do
  json.array! round.matches do |match|
    json.partial! match, partial: "api/matches/match", as: :match
  end

end