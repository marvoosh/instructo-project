class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :expertise
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
