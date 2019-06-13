json.name "#{user.first_name} #{user.last_name}"
json.GNC_Average user.avg_gnc
json.Two_Year_Average user.avg_two_year
json.Ryder_Cup_Record "#{user.ryder_cup_wins}-#{user.ryder_cup_losses}-#{user.ryder_cup_ties}"
json.Record_2017 user.record_2017
json.Low_Net_Handicap user.handicap_low_net
json.Skins_Handicap user.handicap_skins