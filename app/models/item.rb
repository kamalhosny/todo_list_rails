class Item < ApplicationRecord
  belongs_to :list
  validates :content ,presence:true , length: { maximum: 100 }
end
