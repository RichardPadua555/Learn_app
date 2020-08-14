class Student <  ApplicationRecord


	validates :first_name , presence: true , length: { minumum: 3 , maximum: 10 }
	validates :last_name , presence: true , length: { minumum: 3 , maximum: 10 }
	validates :age , presence: true , length: { minumum: 1 , maximum: 10 }
	validates :gender , presence: true , length: { minumum: 1 , maximum: 20 }
	validates :address , presence: true , length: { minumum: 1 , maximum: 100 }

	belongs_to :course

end	