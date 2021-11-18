class AddBioToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :bio, :text
  end
end
