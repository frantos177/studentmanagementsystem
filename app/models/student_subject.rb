class StudentSubject < ActiveRecord::Base
	belongs_to :student
	belongs_to :subject

  validates :date_enrolled, presence: true
  validates :date_completed, presence: true
  validates :letter_grade, presence: true, inclusion: { in: %w(A, B+, B, C+, C, D, F)}
  validates :numeric_grade, presence: true, numericality: true
end
