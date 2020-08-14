class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name , limit: 256 , null: false
      t.string :last_name , limit: 256 , null: false
      t.integer :age  , null: false
      t.string :gender , limit: 23 , null: false
      t.string :address , limit: 256 , null: true
      t.string :mobile_number , null: false
      t.string :email_id , null: true
      t.timestamps null: false
      t.integer :course_id
    end
  end
end
