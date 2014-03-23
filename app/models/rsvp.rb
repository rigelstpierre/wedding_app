class Rsvp < ActiveRecord::Base

  validates :name,  presence: true
  validates :email, presence: true
  validates :rsvp,  presence: true

end
