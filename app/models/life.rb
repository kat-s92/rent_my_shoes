class Life < ApplicationRecord
  # Column that needs to be geocoded is the address
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :categories
  # Only geocode the change if there was a change to the address
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo

  def create_icon(category)
    case category
    when "Science"
      return "science.png"

    when "Religion"
      return "religion.png"

    when "Actor"
      return "actor.png"

    else

    end

  end
end
