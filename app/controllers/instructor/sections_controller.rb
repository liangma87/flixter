class Instructor::SectionsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @section = Section.new
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.create(section_param)
    redirect_to instructor_course_path(@course)
  end

  private

  def section_param
    params.require(:section).permit(:title)
  end
end
