# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Course.create(
  [
    {
      name: "Hills",
      par_hole_1: 4,
      par_hole_2: 4,
      par_hole_3: 5,
      par_hole_4: 4,
      par_hole_5: 4,
      par_hole_6: 5,
      par_hole_7: 3,
      par_hole_8: 4,
      par_hole_9: 3,
      par_hole_10: 4,
      par_hole_11: 5,
      par_hole_12: 4,
      par_hole_13: 5,
      par_hole_14: 3,
      par_hole_15: 4,
      par_hole_16: 3,
      par_hole_17: 4,
      par_hole_18: 5,
      hdcp_hole_1: 9,
      hdcp_hole_2: 13,
      hdcp_hole_3: 7,
      hdcp_hole_4: 11,
      hdcp_hole_5: 1,
      hdcp_hole_6: 3,
      hdcp_hole_7: 17,
      hdcp_hole_8: 5,
      hdcp_hole_9: 15,
      hdcp_hole_10: 14,
      hdcp_hole_11: 2,
      hdcp_hole_12: 12,
      hdcp_hole_13: 10,
      hdcp_hole_14: 18,
      hdcp_hole_15: 4,
      hdcp_hole_16: 16,
      hdcp_hole_17: 6,
      hdcp_hole_18: 8

    }
  ]
)

Round.create(
  [
    {
      name: "2018 2-Man Total Score",
      course_id: 1

    }
  ]
)

Match.create(
  [
    {
      round_id: 1,
      name: "Team 1 vs Team 2"

    },
    {
      round_id: 1,
      name: "Team 3 vs Team 4"
    },
    {
      round_id: 1,
      name: "Team 5 vs Team 6"
    }
  ]
)

Team.create(
  [
    {
      name: "Team Kamp",
      match_id: 1

    },
    {
      name: "Team Cerreta",
      match_id: 1
    },
    {
      name: "Team Warburton",
      match_id: 2
    },
    {
      name: "Team O'Neil",
      match_id: 2
    }
  ]
)

User.create(
  [
    {
      first_name: "Adam",
      last_name: "Kamp",
      phone_number: "773-999-0077",
      email: "ak@gmail.com"
    },
    {
      first_name: "Phil",
      last_name: "Kamp",
      phone_number: "312-333-2220",
      email: "pk@gmail.com"
    },
    {
      first_name: "Mark",
      last_name: "Cerreta",
      phone_number: "312-444-2220",
      email: "mc@gmail.com"
    },
    {
      first_name: "Sam",
      last_name: "Cerreta",
      phone_number: "312-111-2220",
      email: "sc@gmail.com"
    },
    {
      first_name: "Mark",
      last_name: "Warburton",
      phone_number: "444-111-2220",
      email: "mw@gmail.com"
    },
    {
      first_name: "Jeff",
      last_name: "Warburton",
      phone_number: "444-222-2220",
      email: "jw@gmail.com"
    },{
      first_name: "Brian",
      last_name: "O'neal",
      phone_number: "888-222-2220",
      email: "bo@gmail.com"
    },{
      first_name: "Tom",
      last_name: "O'neal",
      phone_number: "888-222-2220",
      email: "to@gmail.com"
    },
    
  ]
)

UserTeam.create(
  [
    {
      team_id: 1,
      user_id: 1
    },
    {
      team_id: 1,
      user_id: 2
    },
    {
      team_id: 2,
      user_id: 3
    },
    {
      team_id: 2,
      user_id: 4
    },
    {
      team_id: 3,
      user_id: 5
    },
    {
      team_id: 3,
      user_id: 6
    },
    {
      team_id: 4,
      user_id: 7
    },
    {
      team_id: 4,
      user_id: 8
    }
    
    
  ]
)