class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.string :guests
      t.string :attending
      t.string :message

      t.timestamps
    end
  end
end
