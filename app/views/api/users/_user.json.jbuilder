json.id user.id
json.name "#{user.first_name} #{user.last_name}"
json.first_name user.first_name
json.last_name user.last_name
json.team user.team_color
json.gnc_average user.avg_gnc
json.two_year_average user.avg_two_year
json.admin user.admin

json.ryder_cup_record do
  json.formatted_ryder_cup_record "#{user.ryder_cup_wins}-#{user.ryder_cup_losses}-#{user.ryder_cup_ties}"
  json.ryder_cup_wins user.ryder_cup_wins
  json.ryder_cup_losses user.ryder_cup_losses
  json.ryder_cup_ties user.ryder_cup_ties
end

json.last_year_record do
  json.wins user.wins_last_year
  json.losses user.losses_last_year
  json.ties user.ties_last_year
end

json.low_net_handicap user.handicap_low_net
json.skins_handicap user.handicap_skins


# if current_user == user
  json.personal_info do
    json.phone_number user.phone_number
    json.email user.email
  end
# end