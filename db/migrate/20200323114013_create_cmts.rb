class CreateCmts < ActiveRecord::Migration[5.2]
  def change
    create_table :cmts do |t|
      t.string :commenter
      t.text :body
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
