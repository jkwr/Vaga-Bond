class Post < ApplicationRecord
  belongs_to :city, optional: true
  belongs_to :user, optional: true

  validates :title, length: { minimum: 1, maximum: 200 }
  validates :description, length: { minimum: 1, maximum: 200 }

end
