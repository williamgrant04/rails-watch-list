class List < ApplicationRecord
  has_one_attached :image
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true
  validates :name, presence: :true
end
