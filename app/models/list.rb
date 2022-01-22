class List < ApplicationRecord
  belongs_to :user, optional: true
  has_many :words
  has_many :cards
end
