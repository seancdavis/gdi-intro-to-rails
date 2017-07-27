class TeachersController < ApplicationController
  before_action :set_teacher, only: [:edit, :update, :destroy]
    
    def index
        @teachers = Teacher.all
    end
    
    def new
        @teacher = Teacher.new
    end
    
    def create
        @teacher = Teacher.new(teacher_params)
        
        if @teacher.save
            redirect_to teachers_path
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
      if @teacher.update(teacher_params)
        redirect_to teachers_path, notice: 'Teacher was successfully updated.'
      else
        render :edit
      end
    end
    
    def destroy
      @teacher.destroy
      redirect_to teachers_path, notice: 'Teacher was deleted successfully.'
    end
    
    private
    
    def teacher_params
        params.require(:teacher).permit(:name)
    end
    
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

end
