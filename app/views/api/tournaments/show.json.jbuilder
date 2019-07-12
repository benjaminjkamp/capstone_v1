json.partial! "tournament.json.jbuilder", tournament: @tournament

json.commisioner do
  json.partial! @commissioner, partial: "api/users/user", as: :user
end