class Attendance < ApplicationRecord
  has_many :response_attendances
  has_many :responses, through: :response_attendances
end
