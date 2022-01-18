class List < ApplicationRecord
  belongs_to :word, optional: true
  belongs_to :user, optional: true
  
  # validates :user_id, presence: true
  # validates :word_id, presence: true

end
