class Response < ApplicationRecord
  validates :name, presence: true
  validates :attending, presence: true
end
