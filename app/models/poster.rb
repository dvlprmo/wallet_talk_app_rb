class Poster < ApplicationRecord
    has_many :posts, foreign_key: "posters_id"
end
