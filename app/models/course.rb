class Course < ApplicationRecord

has_many :students

	include LearnApp::Scopes::CourseScopes

	validates :code , presence: true , length: { minumum: 3 , maximum: 10 }
	validates :name , presence: true , length: { minumum: 5 , maximum: 50 }
	validates :description , presence: true , length: { minumum: 10 , maximum: 300 }
	validates :number_sem , presence: true , length: { minumum: 1 , maximum: 20 }


end	