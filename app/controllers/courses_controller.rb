class CoursesController < ApplicationController
    include Wicked::Wizard
    steps *Course.form_steps
    steps :first, :second, :third
    def new 

    end    

    def index
        

    end

    def create
        @course = Course.new
        @course.save(validate: false)
        redirect_to course_step_path(@course, :first)
      end
end