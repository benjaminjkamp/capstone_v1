class Api::CoursesController < ApplicationController

  def index
    @courses = Course.all

    render 'index.json.jbuilder'
    
  end

  def create
    @course = Course.new(
      name: params[:name],
      location: params[:location],      
      
      par_hole_1: params[:par_hole_1],
      par_hole_2: params[:par_hole_2],
      par_hole_3: params[:par_hole_2],
      par_hole_4: params[:par_hole_2],
      par_hole_5: params[:par_hole_2],
      par_hole_6: params[:par_hole_2],
      par_hole_7: params[:par_hole_2],
      par_hole_8: params[:par_hole_2],
      par_hole_9: params[:par_hole_2],
      par_hole_10: params[:par_hole_2],
      par_hole_11: params[:par_hole_2],
      par_hole_12: params[:par_hole_2],
      par_hole_13: params[:par_hole_2],
      par_hole_14: params[:par_hole_2],
      par_hole_15: params[:par_hole_2],
      par_hole_16: params[:par_hole_2],
      par_hole_17: params[:par_hole_2],
      par_hole_18: params[:par_hole_2],

      hdcp_hole_1: params[:hdcp_hole_1],
      hdcp_hole_2: params[:hdcp_hole_2],
      hdcp_hole_3: params[:hdcp_hole_2],
      hdcp_hole_4: params[:hdcp_hole_2],
      hdcp_hole_5: params[:hdcp_hole_2],
      hdcp_hole_6: params[:hdcp_hole_2],
      hdcp_hole_7: params[:hdcp_hole_2],
      hdcp_hole_8: params[:hdcp_hole_2],
      hdcp_hole_9: params[:hdcp_hole_2],
      hdcp_hole_10: params[:hdcp_hole_2],
      hdcp_hole_11: params[:hdcp_hole_2],
      hdcp_hole_12: params[:hdcp_hole_2],
      hdcp_hole_13: params[:hdcp_hole_2],
      hdcp_hole_14: params[:hdcp_hole_2],
      hdcp_hole_15: params[:hdcp_hole_2],
      hdcp_hole_16: params[:hdcp_hole_2],
      hdcp_hole_17: params[:hdcp_hole_2],
      hdcp_hole_18: params[:hdcp_hole_2]
      

      )
    if @course.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @course.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def show
    @course = Course.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @course = Course.find(params[:id])

    @course.name = params[:name] || @course.name
    @course.location = params[:location] || @course.location

    @course.par_hole_1 = params[:par_hole_1] || @course.par_hole_1
    @course.par_hole_2 = params[:par_hole_2] || @course.par_hole_2
    @course.par_hole_3 = params[:par_hole_3] || @course.par_hole_3
    @course.par_hole_4 = params[:par_hole_4] || @course.par_hole_4
    @course.par_hole_5 = params[:par_hole_5] || @course.par_hole_5
    @course.par_hole_6 = params[:par_hole_6] || @course.par_hole_6
    @course.par_hole_7 = params[:par_hole_7] || @course.par_hole_7
    @course.par_hole_8 = params[:par_hole_8] || @course.par_hole_8
    @course.par_hole_9 = params[:par_hole_9] || @course.par_hole_9
    @course.par_hole_10 = params[:par_hole_10] || @course.par_hole_10
    @course.par_hole_11 = params[:par_hole_11] || @course.par_hole_11
    @course.par_hole_12 = params[:par_hole_12] || @course.par_hole_12
    @course.par_hole_13 = params[:par_hole_13] || @course.par_hole_13
    @course.par_hole_14 = params[:par_hole_14] || @course.par_hole_14
    @course.par_hole_15 = params[:par_hole_15] || @course.par_hole_15
    @course.par_hole_16 = params[:par_hole_16] || @course.par_hole_16
    @course.par_hole_17 = params[:par_hole_17] || @course.par_hole_17
    @course.par_hole_18 = params[:par_hole_18] || @course.par_hole_18

    @course.hdcp_hole_1 = params[:hdcp_hole_1] || @course.hdcp_hole_1
    @course.hdcp_hole_2 = params[:hdcp_hole_2] || @course.hdcp_hole_2
    @course.hdcp_hole_3 = params[:hdcp_hole_3] || @course.hdcp_hole_3
    @course.hdcp_hole_4 = params[:hdcp_hole_4] || @course.hdcp_hole_4
    @course.hdcp_hole_5 = params[:hdcp_hole_5] || @course.hdcp_hole_5
    @course.hdcp_hole_6 = params[:hdcp_hole_6] || @course.hdcp_hole_6
    @course.hdcp_hole_7 = params[:hdcp_hole_7] || @course.hdcp_hole_7
    @course.hdcp_hole_8 = params[:hdcp_hole_8] || @course.hdcp_hole_8
    @course.hdcp_hole_9 = params[:hdcp_hole_9] || @course.hdcp_hole_9
    @course.hdcp_hole_10 = params[:hdcp_hole_10] || @course.hdcp_hole_10
    @course.hdcp_hole_11 = params[:hdcp_hole_11] || @course.hdcp_hole_11
    @course.hdcp_hole_12 = params[:hdcp_hole_12] || @course.hdcp_hole_12
    @course.hdcp_hole_13 = params[:hdcp_hole_13] || @course.hdcp_hole_13
    @course.hdcp_hole_14 = params[:hdcp_hole_14] || @course.hdcp_hole_14
    @course.hdcp_hole_15 = params[:hdcp_hole_15] || @course.hdcp_hole_15
    @course.hdcp_hole_16 = params[:hdcp_hole_16] || @course.hdcp_hole_16
    @course.hdcp_hole_17 = params[:hdcp_hole_17] || @course.hdcp_hole_17
    @course.hdcp_hole_18 = params[:hdcp_hole_18] || @course.hdcp_hole_18
    
    if @course.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @course.errors.full_messages}, status: :unprocessable_entity
    end
    
  end



end
