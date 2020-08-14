class CoursesController < BaseController

before_action :existing_course , only: [:edit , :update , :destroy , :show]

layout 'learn_app'

	def index
		@courses = Course.all
		
	end

	def show

	end	
		

	def new
		new_course
		
	end

	def create
		new_course
		@course.assign_attributes(permitted_params)
		if @course.save
			redirect_to courses_path
		else
			render 'new'	
		end	
		
	end

	def edit
		
		
	end

	def update
		@course.update(permitted_params)
		if @course.save
        	redirect_to courses_path
        else
        	render 'edit'	
		end	
		
	end

	def destroy
		if @course.destroy
			redirect_to courses_path
		end	
		
	end
   
	private

	def permitted_params
		params.require(:course).permit(
			:code ,
			:name ,
			:number_sem , 
			:description
			)
		
	end

	def existing_course
		@course = Course.find(params[:id])
		
	end

	def new_course
		@course = Course.new
	end	

end	