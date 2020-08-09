class Api::CoursesController < ApplicationController

  before_action :authenticate_user, only: [:create, :update]

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
      par_hole_3: params[:par_hole_3],
      par_hole_4: params[:par_hole_4],
      par_hole_5: params[:par_hole_5],
      par_hole_6: params[:par_hole_6],
      par_hole_7: params[:par_hole_7],
      par_hole_8: params[:par_hole_8],
      par_hole_9: params[:par_hole_9],
      par_hole_10: params[:par_hole_10],
      par_hole_11: params[:par_hole_11],
      par_hole_12: params[:par_hole_12],
      par_hole_13: params[:par_hole_13],
      par_hole_14: params[:par_hole_14],
      par_hole_15: params[:par_hole_15],
      par_hole_16: params[:par_hole_16],
      par_hole_17: params[:par_hole_17],
      par_hole_18: params[:par_hole_18],

      hdcp_hole_1: params[:hdcp_hole_1],
      hdcp_hole_2: params[:hdcp_hole_2],
      hdcp_hole_3: params[:hdcp_hole_3],
      hdcp_hole_4: params[:hdcp_hole_4],
      hdcp_hole_5: params[:hdcp_hole_5],
      hdcp_hole_6: params[:hdcp_hole_6],
      hdcp_hole_7: params[:hdcp_hole_7],
      hdcp_hole_8: params[:hdcp_hole_8],
      hdcp_hole_9: params[:hdcp_hole_9],
      hdcp_hole_10: params[:hdcp_hole_10],
      hdcp_hole_11: params[:hdcp_hole_11],
      hdcp_hole_12: params[:hdcp_hole_12],
      hdcp_hole_13: params[:hdcp_hole_13],
      hdcp_hole_14: params[:hdcp_hole_14],
      hdcp_hole_15: params[:hdcp_hole_15],
      hdcp_hole_16: params[:hdcp_hole_16],
      hdcp_hole_17: params[:hdcp_hole_17],
      hdcp_hole_18: params[:hdcp_hole_18]
      

    )
    @par_errors = "no errors"
    @handicap_errors = "no errors"
    
    if @course.save
      @par_errors = @course.add_pars(@course)
      @handicap_errors = @course.add_handicaps(@course)
      if @course.pars[17] && @course.handicaps[17]
        render 'show.json.jbuilder'
      else
        render json:{par_errors: @par_errors, handicap_errors: @handicap_errors}, status: :unprocessable_entity
      end
    else
      render json:{course_errors: @course.errors.full_messages, par_errors: @par_errors, handicap_errors: @handicap_errors}, status: :unprocessable_entity
    end
    
  end

  def show
    @course = Course.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @course = Course.find(params[:id])
    @par = Par.where(course_id: @course.id, hole: params[:hole])
    @handicap = Handicap.where(course_id: @course.id, hole: params[:hole])
    
    @course.name = params[:name] || @course.name
    @course.location = params[:location] || @course.location
    @par.value = params[:par] || @par.value
    @handicap.value = params[:handicap] || @handicap.value



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


