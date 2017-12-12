class Comment < ApplicationRecord
  belongs_to :booklist
  validates :body, presence: true

end
