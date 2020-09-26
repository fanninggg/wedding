class RemoveAttendingFromResponses < ActiveRecord::Migration[6.0]
  def change
    remove_column :responses, :attending, :string
  end
end
