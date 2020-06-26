class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  validates :title, presence: true
  validates :body, presence: true
  validates :user, presence: true
end
