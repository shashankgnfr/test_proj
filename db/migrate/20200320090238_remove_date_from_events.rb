class RemoveDateFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :date, :integer
  end
end
