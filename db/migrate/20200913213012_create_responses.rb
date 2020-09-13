class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :name
      t.boolean :attending
      t.string :diet

      t.timestamps
    end
  end
end
