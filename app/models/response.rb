class Response < ApplicationRecord
  validates :name, presence: true
  validates :guests, presence: true
  validates :attending, presence: true
end
