class Student < ActiveRecord::Base
 has_many :student_subjects

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
  validates :date, presence: true
  validates :address, presence: true
  validates :student_number, presence: true, uniqueness: true
  validates :contact_number, presence: true
  validates :email, presence: true, uniqueness: true

  def to_s
    student_number
  end

end
