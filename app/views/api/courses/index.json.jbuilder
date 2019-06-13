json.array! @courses.each do |course|
  json.partial! "course.json.jbuilder", course: course
end



# json.array! @courses, :par_hole_1, :par_hole_2, :par_hole_3, :par_hole_4, :par_hole_5, :par_hole_6, :par_hole_7, :par_hole_8, :par_hole_9, :par_hole_10, :par_hole_11, :par_hole_12, :par_hole_13, :par_hole_14, :par_hole_15, :par_hole_16, :par_hole_17, :par_hole_18

# json.array! @courses, :hdcp_hole_1, :hdcp_hole_2, :hdcp_hole_3, :hdcp_hole_4, :hdcp_hole_5, :hdcp_hole_6, :hdcp_hole_7, :hdcp_hole_8, :hdcp_hole_9, :hdcp_hole_10, :hdcp_hole_11, :hdcp_hole_12, :hdcp_hole_13, :hdcp_hole_14, :hdcp_hole_15, :hdcp_hole_16, :hdcp_hole_17, :hdcp_hole_18