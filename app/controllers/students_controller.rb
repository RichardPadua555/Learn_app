class StudentsController < BaseController

before_action :existing_student , only: [:show , :edit , :update , :destroy]

layout 'learn_app'	

	def index
		@students = Student.all
		
	end


	def show
		
	end

	def new
		new_student
		
	end

	def create
		new_student
		@student.assign_attributes(permitted_params)
		if @student.save
			redirect_to students_path
		else
			render 'new'	
		
		end
	end

	def edit
		
	end


	def update
		@student.update(permitted_params)
		if @student.save
			redirect_to students_path
		else
			render 'edit'	
		end	
		
	end

	def destroy
		if @student.destroy
			redirect_to students_path
		end	
		
	end

	private

	def permitted_params
		params.require(:student).permit(
			:first_name , 
			:last_name , 
			:age , 
			:gender , 
			:address , 
			:mobile_number , 
			:email_id , 
			:course_id 
			)
		
	end

	def existing_student
		@student = Student.find(params[:id])
	end
	

	def new_student
		@student = Student.new

	end	

end	