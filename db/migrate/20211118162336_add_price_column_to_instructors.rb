class AddPriceColumnToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :price, :integer
  end
end
