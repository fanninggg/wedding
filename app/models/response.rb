class Response < ApplicationRecord
  validates :name, presence: true
  validates :response_attendances, presence: true

  has_many :response_attendances
  has_many :attendances, through: :response_attendances
end
