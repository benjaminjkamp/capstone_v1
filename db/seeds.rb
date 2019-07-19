Course.create!([
  {name: "Arthur Hills Golf Course", par_hole_1: 4, par_hole_2: 4, par_hole_3: 5, par_hole_4: 4, par_hole_5: 4, par_hole_6: 5, par_hole_7: 3, par_hole_8: 4, par_hole_9: 3, par_hole_10: 4, par_hole_11: 5, par_hole_12: 4, par_hole_13: 5, par_hole_14: 3, par_hole_15: 4, par_hole_16: 3, par_hole_17: 4, par_hole_18: 5, hdcp_hole_1: 9, hdcp_hole_2: 13, hdcp_hole_3: 7, hdcp_hole_4: 11, hdcp_hole_5: 1, hdcp_hole_6: 3, hdcp_hole_7: 17, hdcp_hole_8: 5, hdcp_hole_9: 15, hdcp_hole_10: 14, hdcp_hole_11: 2, hdcp_hole_12: 12, hdcp_hole_13: 10, hdcp_hole_14: 18, hdcp_hole_15: 4, hdcp_hole_16: 16, hdcp_hole_17: 6, hdcp_hole_18: 8, location: "250 Heather Dr, Harbor Springs, MI 49740"}
])
Match.create!([
  {round_id: 1, name: "Team Red vs. Team Blue", winner: "Team Blue"},
  {round_id: 1, name: "Team Red vs. Team Blue", winner: "Team Red"}
])
Tournament.create!([
  {name: "GNC Tournament", user_id: 31, red_team_2mantotal: 0, red_team_2manbb: 0, red_team_altshot: 0, red_team_stableford: 0, red_team_head2head: 0, blue_team_2mantotal: 0, blue_team_2manbb: 0, blue_team_altshot: 0, blue_team_stableford: 0, blue_team_head2head: 0}
])
Round.create!([
  {name: "2018 - 2 Man Total Score", course_id: 1, tournament_id: 1}
])
Team.create!([
  {name: "Team Red", match_id: 1, score_hole_1: "0.0", score_hole_2: "0.0", score_hole_3: "0.0", score_hole_4: "0.0", score_hole_5: "0.0", score_hole_6: "0.0", score_hole_7: "1.0", score_hole_8: "0.0", score_hole_9: "0.0", score_hole_10: "0.0", score_hole_11: "1.0", score_hole_12: "0.5", score_hole_13: "1.0", score_hole_14: "0.0", score_hole_15: "1.0", score_hole_16: "0.0", score_hole_17: "1.0", score_hole_18: "0.0", total_score: "5.5"},
  {name: "Team Blue", match_id: 1, score_hole_1: "1.0", score_hole_2: "1.0", score_hole_3: "1.0", score_hole_4: "1.0", score_hole_5: "1.0", score_hole_6: "1.0", score_hole_7: "0.0", score_hole_8: "1.0", score_hole_9: "1.0", score_hole_10: "1.0", score_hole_11: "0.0", score_hole_12: "0.5", score_hole_13: "0.0", score_hole_14: "1.0", score_hole_15: "0.0", score_hole_16: "1.0", score_hole_17: "0.0", score_hole_18: "1.0", total_score: "12.5"},
  {name: "Team Red", match_id: 2, score_hole_1: "0.0", score_hole_2: "0.0", score_hole_3: "0.0", score_hole_4: "1.0", score_hole_5: "1.0", score_hole_6: "0.5", score_hole_7: "0.5", score_hole_8: "1.0", score_hole_9: "0.0", score_hole_10: "0.0", score_hole_11: "0.5", score_hole_12: "1.0", score_hole_13: "1.0", score_hole_14: "1.0", score_hole_15: "1.0", score_hole_16: "0.0", score_hole_17: "1.0", score_hole_18: "0.0", total_score: "9.5"},
  {name: "Team Blue", match_id: 2, score_hole_1: "1.0", score_hole_2: "1.0", score_hole_3: "1.0", score_hole_4: "0.0", score_hole_5: "0.0", score_hole_6: "0.5", score_hole_7: "0.5", score_hole_8: "0.0", score_hole_9: "1.0", score_hole_10: "1.0", score_hole_11: "0.5", score_hole_12: "0.0", score_hole_13: "0.0", score_hole_14: "0.0", score_hole_15: "0.0", score_hole_16: "1.0", score_hole_17: "0.0", score_hole_18: "1.0", total_score: "8.5"}
])
User.create!([
  {first_name: "Mike", last_name: "M", phone_number: "773-999-0077", email: "mm@gmail.com", avg_gnc: 75, avg_two_year: "74.5", ryder_cup_wins: 2, ryder_cup_losses: 3, ryder_cup_ties: 0, record_2017: "2 - 3 - 0", handicap_low_net: 0, handicap_skins: 0, password: "pword"},
  {first_name: "Mike", last_name: "D", phone_number: "312-333-2220", email: "md@gmail.com", avg_gnc: 82, avg_two_year: "77.5", ryder_cup_wins: 41, ryder_cup_losses: 27, ryder_cup_ties: 3, record_2017: "2 - 3 - 0", handicap_low_net: 3, handicap_skins: 3, password: "pword"},
  {first_name: "Mark", last_name: "C", phone_number: "312-444-2220", email: "mc@gmail.com", avg_gnc: 84, avg_two_year: "80.5", ryder_cup_wins: 37, ryder_cup_losses: 31, ryder_cup_ties: 3, record_2017: "3 - 2 - 0", handicap_low_net: 5, handicap_skins: 6, password: "pword"},
  {first_name: "Geoff", last_name: "K", phone_number: "312-111-2220", email: "gk@gmail.com", avg_gnc: 83, avg_two_year: "82.5", ryder_cup_wins: 3, ryder_cup_losses: 2, ryder_cup_ties: 0, record_2017: "3 - 2 - 0", handicap_low_net: 0, handicap_skins: 0, password: "pword"},
  {first_name: "Doug", last_name: "S", phone_number: "444-111-2220", email: "ds@gmail.com", avg_gnc: 84, avg_two_year: "83.6", ryder_cup_wins: 5, ryder_cup_losses: 3, ryder_cup_ties: 1, record_2017: "4 - 1 - 0", handicap_low_net: 8, handicap_skins: 9, password: "pword"},
  {first_name: "Brian", last_name: "O", phone_number: "888-222-2220", email: "bo@gmail.com", avg_gnc: 88, avg_two_year: "84.1", ryder_cup_wins: 13, ryder_cup_losses: 17, ryder_cup_ties: 2, record_2017: "2 - 3 - 0", handicap_low_net: 9, handicap_skins: 10, password: "pword"},
  {first_name: "Rob", last_name: "A", phone_number: "444-222-2220", email: "ra@gmail.com", avg_gnc: 90, avg_two_year: "86.4", ryder_cup_wins: 13, ryder_cup_losses: 9, ryder_cup_ties: 2, record_2017: "4 - 1 - 0", handicap_low_net: 11, handicap_skins: 12, password: "pword"},
  {first_name: "Mark", last_name: "W", phone_number: "888-222-2220", email: "mw@gmail.com", avg_gnc: 89, avg_two_year: "87.3", ryder_cup_wins: 35, ryder_cup_losses: 27, ryder_cup_ties: 7, record_2017: "2 - 3 - 0", handicap_low_net: 11, handicap_skins: 13, password: "pword"},
  {first_name: "Cam", last_name: "D", phone_number: "773-999-0077", email: "cd@gmail.com", avg_gnc: 84, avg_two_year: "88.3", ryder_cup_wins: 3, ryder_cup_losses: 11, ryder_cup_ties: 1, record_2017: "0 - 5 - 0", handicap_low_net: 12, handicap_skins: 14, password: "pword"},
  {first_name: "Mark", last_name: "B", phone_number: "312-333-2220", email: "mb@gmail.com", avg_gnc: 90, avg_two_year: "88.3", ryder_cup_wins: 31, ryder_cup_losses: 16, ryder_cup_ties: 7, record_2017: "0 - 3 - 2", handicap_low_net: 12, handicap_skins: 14, password: "pword"},
  {first_name: "Sam", last_name: "C", phone_number: "312-444-2220", email: "sc@gmail.com", avg_gnc: 87, avg_two_year: "88.9", ryder_cup_wins: 25, ryder_cup_losses: 20, ryder_cup_ties: 1, record_2017: "4 - 1 - 0", handicap_low_net: 13, handicap_skins: 14, password: "pword"},
  {first_name: "Daniel", last_name: "H", phone_number: "312-111-2220", email: "dh@gmail.com", avg_gnc: 89, avg_two_year: "89.9", ryder_cup_wins: 12, ryder_cup_losses: 6, ryder_cup_ties: 1, record_2017: "3 - 2 - 0", handicap_low_net: 14, handicap_skins: 15, password: "pword"},
  {first_name: "Phil", last_name: "K", phone_number: "444-111-2220", email: "pk@gmail.com", avg_gnc: 93, avg_two_year: "90.0", ryder_cup_wins: 34, ryder_cup_losses: 34, ryder_cup_ties: 3, record_2017: "5 - 0 - 0", handicap_low_net: 14, handicap_skins: 16, password: "pword"},
  {first_name: "Tom", last_name: "O", phone_number: "888-222-2220", email: "to@gmail.com", avg_gnc: 89, avg_two_year: "90.6", ryder_cup_wins: 31, ryder_cup_losses: 35, ryder_cup_ties: 5, record_2017: "5 - 0 - 0", handicap_low_net: 15, handicap_skins: 16, password: "pword"},
  {first_name: "Steve", last_name: "G", phone_number: "444-222-2220", email: "sg@gmail.com", avg_gnc: 91, avg_two_year: "90.8", ryder_cup_wins: 4, ryder_cup_losses: 3, ryder_cup_ties: 2, record_2017: "2 - 1 - 2", handicap_low_net: 15, handicap_skins: 16, password: "pword"},
  {first_name: "Jeff", last_name: "D", phone_number: "888-222-2220", email: "jd@gmail.com", avg_gnc: 92, avg_two_year: "91.0", ryder_cup_wins: 29, ryder_cup_losses: 15, ryder_cup_ties: 6, record_2017: "2 - 3 - 0", handicap_low_net: 15, handicap_skins: 17, password: "pword"},
  {first_name: "Bob", last_name: "C", phone_number: "773-999-0077", email: "bc@gmail.com", avg_gnc: 102, avg_two_year: "91.8", ryder_cup_wins: 23, ryder_cup_losses: 27, ryder_cup_ties: 4, record_2017: "3 - 2 - 0", handicap_low_net: 16, handicap_skins: 17, password: "pword"},
  {first_name: "Jim", last_name: "K", phone_number: "312-333-2220", email: "jk@gmail.com", avg_gnc: 93, avg_two_year: "92.0", ryder_cup_wins: 17, ryder_cup_losses: 34, ryder_cup_ties: 3, record_2017: "2 - 3 - 0", handicap_low_net: 16, handicap_skins: 18, password: "pword"},
  {first_name: "Doug", last_name: "B", phone_number: "312-444-2220", email: "db@gmail.com", avg_gnc: 94, avg_two_year: "94.0", ryder_cup_wins: 0, ryder_cup_losses: 4, ryder_cup_ties: 1, record_2017: "0 - 4 - 1", handicap_low_net: 18, handicap_skins: 20, password: "pword"},
  {first_name: "Jeff", last_name: "W", phone_number: "312-111-2220", email: "jw@gmail.com", avg_gnc: 97, avg_two_year: "97.0", ryder_cup_wins: 5, ryder_cup_losses: 4, ryder_cup_ties: 0, record_2017: "1 - 4 - 0", handicap_low_net: 20, handicap_skins: 23, password: "pword"},
  {first_name: "Joe", last_name: "C", phone_number: "444-111-2220", email: "jc@gmail.com", avg_gnc: 99, avg_two_year: "97.8", ryder_cup_wins: 9, ryder_cup_losses: 5, ryder_cup_ties: 0, record_2017: "4 - 1 - 0", handicap_low_net: 21, handicap_skins: 23, password: "pword"},
  {first_name: "Adam", last_name: "K", phone_number: "888-222-2220", email: "ak@gmail.com", avg_gnc: 103, avg_two_year: "98.5", ryder_cup_wins: 15, ryder_cup_losses: 11, ryder_cup_ties: 1, record_2017: "0 - 0 - 0", handicap_low_net: 16, handicap_skins: 18, password: "pword"},
  {first_name: "Bob", last_name: "R", phone_number: "444-222-2220", email: "br@gmail.com", avg_gnc: 106, avg_two_year: "98.9", ryder_cup_wins: 31, ryder_cup_losses: 38, ryder_cup_ties: 2, record_2017: "2 - 3 - 0", handicap_low_net: 22, handicap_skins: 24, password: "pword"},
  {first_name: "Darrel", last_name: "B", phone_number: "9709990000", email: "darrelb@gmail.com", avg_gnc: 100, avg_two_year: "100.3", ryder_cup_wins: 1, ryder_cup_losses: 4, ryder_cup_ties: 0, record_2017: "1 - 4 - 0", handicap_low_net: 23, handicap_skins: 26, password: "pword"},
  {first_name: "Ben", last_name: "H", phone_number: "888-222-2220", email: "bh@gmail.com", avg_gnc: 102, avg_two_year: "101.0", ryder_cup_wins: 10, ryder_cup_losses: 17, ryder_cup_ties: 0, record_2017: "0 - 0 - 0", handicap_low_net: 24, handicap_skins: 27, password: "pword"},
  {first_name: "George", last_name: "C", phone_number: "888-222-2220", email: "gc@gmail.com", avg_gnc: 107, avg_two_year: "102.3", ryder_cup_wins: 21, ryder_cup_losses: 38, ryder_cup_ties: 1, record_2017: "3 - 2 - 0", handicap_low_net: 25, handicap_skins: 28, password: "pword"},
  {first_name: "Ron", last_name: "S", phone_number: "888-222-2220", email: "rs@gmail.com", avg_gnc: 102, avg_two_year: "105.4", ryder_cup_wins: 25, ryder_cup_losses: 43, ryder_cup_ties: 3, record_2017: "3 - 2 - 0", handicap_low_net: 28, handicap_skins: 31, password: "pword"},
  {first_name: "Tommy Jr", last_name: "O", phone_number: "888-222-2220", email: "tjo@gmail.com", avg_gnc: 106, avg_two_year: "105.4", ryder_cup_wins: 5, ryder_cup_losses: 8, ryder_cup_ties: 1, record_2017: "3 - 2 - 0", handicap_low_net: 28, handicap_skins: 31, password: "pword"},
  {first_name: "Chad", last_name: "B", phone_number: "888-222-2220", email: "cb@gmail.com", avg_gnc: 106, avg_two_year: "106.0", ryder_cup_wins: 2, ryder_cup_losses: 6, ryder_cup_ties: 1, record_2017: "2 - 3 - 0", handicap_low_net: 28, handicap_skins: 32, password: "pword"},
  {first_name: "Scott", last_name: "W", phone_number: "888-222-2220", email: "sw@gmail.com", avg_gnc: 103, avg_two_year: "106.4", ryder_cup_wins: 36, ryder_cup_losses: 33, ryder_cup_ties: 2, record_2017: "4 - 1 - 0", handicap_low_net: 29, handicap_skins: 32, password: "pword"},
  {first_name: "Todd", last_name: "S", phone_number: "888-222-2220", email: "ts@gmail.com", avg_gnc: 104, avg_two_year: "113.8", ryder_cup_wins: 22, ryder_cup_losses: 34, ryder_cup_ties: 6, record_2017: "0 - 4 - 1", handicap_low_net: 35, handicap_skins: 39, password: "pword"},
  {first_name: "Ali", last_name: "Z", phone_number: "888-222-2220", email: "az@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: 0, ryder_cup_losses: 0, ryder_cup_ties: 0, record_2017: "0 - 0 - 0", handicap_low_net: 35, handicap_skins: 39, password: "pword"}
])
UserTeam.create!([
  {user_id: 3, team_id: 1},
  {user_id: 9, team_id: 1},
  {user_id: 2, team_id: 2},
  {user_id: 16, team_id: 2},
  {user_id: 13, team_id: 3},
  {user_id: 25, team_id: 3},
  {user_id: 15, team_id: 4},
  {user_id: 17, team_id: 4}
])
