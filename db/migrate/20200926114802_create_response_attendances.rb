class CreateResponseAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :response_attendances do |t|
      t.references :response, null: false, foreign_key: true
      t.references :attendance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
