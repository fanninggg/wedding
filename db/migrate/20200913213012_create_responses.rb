class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.integer :attending
      t.string :diet
      t.string :accommodation 

      t.timestamps
    end
  end
end
