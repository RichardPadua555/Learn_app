class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    t.string :code, limit: 32, null: true
    t.string :name, limit: 256, null: false
		t.string :description, limit: 256, null: true
		t.integer :number_sem, default: 1, null: false
		t.string :status, default: "ACTIVE", limit: 16, null: false
		t.timestamps  null: false
    end
  end
end
