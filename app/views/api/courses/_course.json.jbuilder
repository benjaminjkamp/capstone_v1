json.id course.id
json.name course.name
json.location course.location

json.handicaps do
  json.array! course.handicaps.order(:id).each do |handicap|
    json.value handicap.value
  end
end

json.pars do
  json.array! course.pars.order(:id).each do |par|
    json.value par.value
  end
end

# json.pars do
#   json.hole1_par course.par_hole_1
#   json.hole2_par course.par_hole_2
#   json.hole3_par course.par_hole_3
#   json.hole4_par course.par_hole_4
#   json.hole5_par course.par_hole_5
#   json.hole6_par course.par_hole_6
#   json.hole7_par course.par_hole_7
#   json.hole8_par course.par_hole_8
#   json.hole9_par course.par_hole_9
#   json.hole10_par course.par_hole_10
#   json.hole11_par course.par_hole_11
#   json.hole12_par course.par_hole_12
#   json.hole13_par course.par_hole_13
#   json.hole14_par course.par_hole_14
#   json.hole15_par course.par_hole_15
#   json.hole16_par course.par_hole_16
#   json.hole17_par course.par_hole_17
#   json.hole18_par course.par_hole_18
# end

# json.handicaps do
#   json.hole1_handicap course.hdcp_hole_1
#   json.hole2_handicap course.hdcp_hole_2
#   json.hole3_handicap course.hdcp_hole_3
#   json.hole4_handicap course.hdcp_hole_4
#   json.hole5_handicap course.hdcp_hole_5
#   json.hole6_handicap course.hdcp_hole_6
#   json.hole7_handicap course.hdcp_hole_7
#   json.hole8_handicap course.hdcp_hole_8
#   json.hole9_handicap course.hdcp_hole_9
#   json.hole10_handicap course.hdcp_hole_10
#   json.hole11_handicap course.hdcp_hole_11
#   json.hole12_handicap course.hdcp_hole_12
#   json.hole13_handicap course.hdcp_hole_13
#   json.hole14_handicap course.hdcp_hole_14
#   json.hole15_handicap course.hdcp_hole_15
#   json.hole16_handicap course.hdcp_hole_16
#   json.hole17_handicap course.hdcp_hole_17
#   json.hole18_handicap course.hdcp_hole_18
# end