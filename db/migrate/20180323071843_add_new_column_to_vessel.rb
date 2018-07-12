class AddNewColumnToVessel < ActiveRecord::Migration[5.1]
  def change
    add_column :vessels, :new_column, :string
  end
end
