class AddProfileUrlCoverUrlToInstructor < ActiveRecord::Migration[6.0]
  def change
    add_column :instructors, :profile_url, :string
    add_column :instructors, :cover_url, :string
  end
end
