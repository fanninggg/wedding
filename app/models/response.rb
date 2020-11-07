class Response < ApplicationRecord
  validates :name, presence: true
  validates :attending, presence: true

  def display_attendance
  	case attending
  	when 1
  		"Day One Only"
		when 2
  		"Both Days"
		when 3
  		"Neither"
  	end
  end
end
