class AddIndexToCourses < ActiveRecord::Migration
  def change
    add_index :courses, :establishment_id
  end
end
