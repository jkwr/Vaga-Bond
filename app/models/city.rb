class City < ApplicationRecord
has_many :posts, -> { order(created_at: :desc) }, dependent: :destroy
end
