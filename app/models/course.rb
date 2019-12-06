class Course <ApplicationRecord

  validates_presence_of :name

  has_many :student_courses

end
