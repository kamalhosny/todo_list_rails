class Item < ApplicationRecord
  validates :content ,presence:true , length: { maximum: 100 }
end
