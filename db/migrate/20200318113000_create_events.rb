class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :date
      t.integer :number

      t.timestamps
    end
  end
end
