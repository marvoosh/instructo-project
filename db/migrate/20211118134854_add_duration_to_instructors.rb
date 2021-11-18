class AddDurationToInstructors < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :duration, :integer
  end
end
