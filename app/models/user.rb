class User < ApplicationRecord
  has_many :posts, dependent: :delete_all
  has_many :comments
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
