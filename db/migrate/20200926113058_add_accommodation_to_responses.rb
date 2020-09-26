class AddAccommodationToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :accommodation, :boolean
    change_column :responses, :attending, :string
    change_column :responses, :attending, :string
    change_column :responses, :diet, :text
  end
end
