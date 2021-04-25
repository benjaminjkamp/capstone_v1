# Course.create!([
#   {name: "Arthur Hills Golf Course", par_hole_1: nil, par_hole_2: nil, par_hole_3: nil, par_hole_4: nil, par_hole_5: nil, par_hole_6: nil, par_hole_7: nil, par_hole_8: nil, par_hole_9: nil, par_hole_10: nil, par_hole_11: nil, par_hole_12: nil, par_hole_13: nil, par_hole_14: nil, par_hole_15: nil, par_hole_16: nil, par_hole_17: nil, par_hole_18: nil, hdcp_hole_1: nil, hdcp_hole_2: nil, hdcp_hole_3: nil, hdcp_hole_4: nil, hdcp_hole_5: nil, hdcp_hole_6: nil, hdcp_hole_7: nil, hdcp_hole_8: nil, hdcp_hole_9: nil, hdcp_hole_10: nil, hdcp_hole_11: nil, hdcp_hole_12: nil, hdcp_hole_13: nil, hdcp_hole_14: nil, hdcp_hole_15: nil, hdcp_hole_16: nil, hdcp_hole_17: nil, hdcp_hole_18: nil, location: "Michigan"}
# ])
# Handicap.create!([
#   {hole: 2, value: 17, course_id: 1},
#   {hole: 3, value: 5, course_id: 1},
#   {hole: 4, value: 7, course_id: 1},
#   {hole: 5, value: 1, course_id: 1},
#   {hole: 6, value: 13, course_id: 1},
#   {hole: 7, value: 15, course_id: 1},
#   {hole: 8, value: 3, course_id: 1},
#   {hole: 9, value: 11, course_id: 1},
#   {hole: 10, value: 18, course_id: 1},
#   {hole: 11, value: 4, course_id: 1},
#   {hole: 12, value: 8, course_id: 1},
#   {hole: 13, value: 14, course_id: 1},
#   {hole: 14, value: 12, course_id: 1},
#   {hole: 15, value: 2, course_id: 1},
#   {hole: 16, value: 16, course_id: 1},
#   {hole: 17, value: 6, course_id: 1},
#   {hole: 18, value: 10, course_id: 1},
#   {hole: 1, value: 9, course_id: 1}
# ])
# Tournament.create!([
#   {name: "2020 Great Northern Classic", user_id: 1, red_team_2mantotal: 0, red_team_2manbb: 0, red_team_altshot: 0, red_team_stableford: 0, red_team_head2head: 0, blue_team_2mantotal: 0, blue_team_2manbb: 0, blue_team_altshot: 0, blue_team_stableford: 0, blue_team_head2head: 0, year: 2020}
# ])
# Round.create!([
#   {name: "2020 - 2 Man Total Score", course_id: 1, tournament_id: 1, format: "2 Man Total Score"},
#   {name: "2020 - Match Play", course_id: 1, tournament_id: 1, format: "Match Play"},
#   {name: "2020 - Stableford", course_id: 1, tournament_id: 1, format: "Stableford"},
#   {name: "2020 - Alternate Shot", course_id: 1, tournament_id: 1, format: "Alternate Shot"},
#   {name: "2020 - Scramble", course_id: 1, tournament_id: 1, format: "Scramble"},
#   {name: "2020 - 2 Man Best Ball", course_id: 1, tournament_id: 1, format: "2 Man Best Ball"}
# ])

# Par.create!([
#   {hole: 1, value: 4, course_id: 1},
#   {hole: 2, value: 4, course_id: 1},
#   {hole: 3, value: 5, course_id: 1},
#   {hole: 4, value: 4, course_id: 1},
#   {hole: 5, value: 4, course_id: 1},
#   {hole: 6, value: 5, course_id: 1},
#   {hole: 7, value: 3, course_id: 1},
#   {hole: 8, value: 4, course_id: 1},
#   {hole: 9, value: 3, course_id: 1},
#   {hole: 10, value: 4, course_id: 1},
#   {hole: 11, value: 5, course_id: 1},
#   {hole: 12, value: 4, course_id: 1},
#   {hole: 13, value: 5, course_id: 1},
#   {hole: 14, value: 3, course_id: 1},
#   {hole: 15, value: 4, course_id: 1},
#   {hole: 16, value: 3, course_id: 1},
#   {hole: 17, value: 4, course_id: 1},
#   {hole: 18, value: 5, course_id: 1}
# ])




# User.create!([
#   {first_name: "Lance", last_name: "D", phone_number: "7779993333", email: "ld@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: nil, ryder_cup_losses: nil, ryder_cup_ties: nil, record_2017: " -  - ", handicap_low_net: 0, handicap_skins: nil, password_digest: "$2a$12$.gKWC60jgvAmQviYhMlXOeaAGoS3.64hkeUxua7qlZXmyMfNN1.K2", admin: nil},
#   {first_name: "Benjamin", last_name: "K", phone_number: "7779993333", email: "bk@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: nil, ryder_cup_losses: nil, ryder_cup_ties: nil, record_2017: " -  - ", handicap_low_net: 28, handicap_skins: nil, password_digest: "$2a$12$htpLXr.twKMkCSQ7yoK5aeB28TXt24LUpKeJd9wFfuXpsIj9VCONS", admin: nil},
#   {first_name: "Glenn", last_name: "dF", phone_number: "8883339999", email: "gdf@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: nil, ryder_cup_losses: nil, ryder_cup_ties: nil, record_2017: " -  - ", handicap_low_net: 13, handicap_skins: nil, password_digest: "$2a$12$ng3XVnTssnvpEYKRXXb8f.nvniI5iV1H9CJ.h9ROuyYXQgX41EHD2", admin: nil},
#   {first_name: "Ali", last_name: "Z", phone_number: "9993335555", email: "az@gmail.com", avg_gnc: 0, avg_two_year: "0.0", ryder_cup_wins: 0, ryder_cup_losses: 0, ryder_cup_ties: 0, record_2017: "0-0-0", handicap_low_net: 0, handicap_skins: 0, password_digest: "$2a$12$n8MkvLu0Kb9eLSzzKf7fsup2sux5unREM4Av6yHDOi8lrzENYKZz2", admin: nil},
#   {first_name: "Brian", last_name: "O", phone_number: "77339390800", email: "bo@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: nil, ryder_cup_losses: nil, ryder_cup_ties: nil, record_2017: " -  - ", handicap_low_net: 6, handicap_skins: nil, password_digest: "$2a$12$AHcMvPxHLP9lRe7Koa1BZu0CDXPMgFzl1XcJdsb/mW1/aQgkARdEa", admin: false},
#   {first_name: "Phil", last_name: "K", phone_number: "9995559999", email: "pk@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: nil, ryder_cup_losses: nil, ryder_cup_ties: nil, record_2017: nil, handicap_low_net: 10, handicap_skins: nil, password_digest: "$2a$12$Z4OzSos8lDvgyNVjH7n9neZ24wq7PiMXxtkIr7AaDR9ZvE7UT0Sw.", admin: true},
#   {first_name: "Adam", last_name: "K", phone_number: "9995559999", email: "ak@gmail.com", avg_gnc: nil, avg_two_year: nil, ryder_cup_wins: nil, ryder_cup_losses: nil, ryder_cup_ties: nil, record_2017: " -  - ", handicap_low_net: 24, handicap_skins: nil, password_digest: "$2a$12$g6Zu2men9EA2X7C.Z/v0j.rgpTFro2HodK5yQWazOQOa3LMRDGC2a", admin: false}
# ])

