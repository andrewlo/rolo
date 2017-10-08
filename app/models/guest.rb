class Guest < ApplicationRecord
  validates :name, presence: true
end
