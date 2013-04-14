class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :title
      t.integer :cost
      t.text :requirements
      t.string :course_code
      t.datetime :start_date
      t.datetime :end_date
      t.string :scqf_level
      t.string :qualification_type
      t.boolean :pt_ft
      t.string :education_type
      t.integer :establishment_id
      t.timestamps
    end
  end
end
