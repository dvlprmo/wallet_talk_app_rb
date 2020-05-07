class Post < ApplicationRecord
  belongs_to :poster, optional: true
end