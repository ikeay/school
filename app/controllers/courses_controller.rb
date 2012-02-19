class CoursesController < ApplicationController
  def index
	@courses = Course.all
  end

  def show
	@course = Course.find(params[:id])
  end
  
  def search
  end
  
  def result
  @courses=[]
  Course.all.each do |y|
   if y.students.count  >= params[:number].to_i
  @courses << y
  end
  end
  render :index
  end
  
  def document
  uploaded_io = params[:document]
  File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
    file.write(uploaded_io.read)
  end
  redirect_to :action => "index"
end
end
