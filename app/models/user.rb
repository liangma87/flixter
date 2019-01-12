class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :courses, dependent: :destroy
  has_many  :enrollments, dependent: :destroy
  has_many :enrolled_courses, through: :enrollments, source: :course

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def enrolled_in?(course)
    #enrolled_courses = []
    #enrollments.each do |enrollment|
    #  enrolled_courses << enrollment.course
    #end
    #enrolled_courses = enrollments.collect do |enrollment|
    #  enrollment
    #end
    #enrolled_courses = enrollments.collect(&:course)
    return enrolled_courses.include?(course)
  end
end
