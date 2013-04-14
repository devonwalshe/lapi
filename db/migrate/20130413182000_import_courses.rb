require 'csv'
class ImportCourses < ActiveRecord::Migration
  def up
    csv = CSV.read("/users/Azymuth/Documents/Work/TechCube/LJDataJam/Datasets/Cleaning/scotxed/courses_by_centre_formatted.csv")
    csv.each do |row|
      c = Course.new
      c.title = row[3]
      c.establishment_id = row[0] 
      c.scqf_level = row[2]
      c.qualification_type = row[4]
      c.save 
    end
  end

  def down
    Course.delete_all
  end
end
