class Poster < ApplicationRecord
    has_many :posts, foreign_key: "posters_id"
    has_many :notes, through: :posts
    #belongs_to :user
end
