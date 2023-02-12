class Comment < ApplicationRecord
  belongs_to :diary
  belongs_to :user
  
  validates :comment_content, presence: true
end
