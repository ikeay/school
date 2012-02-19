class FacultiesController < ApplicationController
  def show
    @faculty = Faculty.find(params[:id])
    @student = @faculty.student
  end
end
