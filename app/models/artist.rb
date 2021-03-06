class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
