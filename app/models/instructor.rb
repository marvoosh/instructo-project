class Instructor < ApplicationRecord
  belongs_to :user
  has_many :bookings

    include PgSearch::Model
    pg_search_scope :search_by_name_and_expertise,
      against: [ :first_name, :last_name, :expertise ],
      using: {
        tsearch: { prefix: true }
    }
end
