class Word < ApplicationRecord
  belongs_to :list 
  belongs_to :card

  validates :japanese, presence: true
  validates :english, presence: true
  # validates :picture, presence: true
  validates :list_id, presence: true

end
