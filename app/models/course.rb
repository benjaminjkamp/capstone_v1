class Course < ApplicationRecord

  has_many :rounds
  has_many :pars
  has_many :handicaps

  def add_pars(course)
    index = 1
    18.times do
      @par = Par.new(
        course_id: course.id,
        hole: index        
      )
      if @par.save
      else
        @par_errors = @par.errors.full_messages
        return @par_errors
        break
      end
      index += 1
    end
  end

  def add_handicaps(course)
    index = 1
    18.times do
      @handicap = Handicap.new(
        course_id: course.id,
        hole: index        
      )
      if @handicap.save
      else
        @handicap_errors = @handicap.errors.full_messages
        return @handicap_errors
        break
      end
      index += 1
    end
  end

end
