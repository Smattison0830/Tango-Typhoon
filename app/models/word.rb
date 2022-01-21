class Word < ApplicationRecord
  belongs_to :list
  has_many :cards

  validates :japanese, presence: true
  validates :english, presence: true
  # validates :picture, presence: true
  validates :list_id, presence: true

end
