class Note < ApplicationRecord
    belongs_to :post, optional: true
end
