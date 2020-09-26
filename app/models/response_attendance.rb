class ResponseAttendance < ApplicationRecord
  belongs_to :response
  belongs_to :attendance
end
