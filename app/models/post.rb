class Post < ApplicationRecord
  belongs_to :poster, optional: true
  has_many :notes, foreign_key: "posts_id"
end