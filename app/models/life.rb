class Life < ApplicationRecord
  # Column that needs to be geocoded is the address
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  # Only geocode the change if there was a change to the address
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
