class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save

      flash[:success] = "You've created your course!"
      redirect_to browsecourses_path
    else
      render 'new'
    end
  end

  def show

    
  end

  private

    def course_params
      params.require(:course).permit(:name)
    end

end
