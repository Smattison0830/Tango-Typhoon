class Card < ApplicationRecord
  belongs_to :list
  has_one :word
end
