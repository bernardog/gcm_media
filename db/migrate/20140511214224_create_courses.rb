class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.float :first_unity
      t.float :second_unity
      t.float :third_unity
      t.string :status

      t.timestamps
    end
  end
end
