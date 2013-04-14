class Course < ActiveRecord::Base
  belongs_to :establishment
  
  scope :subject_search, lambda { where("title LIKE ?")}
end
