class Book < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON 
    belongs_to :user, optional: true

    validates :titel, :author, :price, :typ, presence:true
    validates :titel, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, length: { maximum: 7 }
  CATAGORY = %w{ Fantasy Horror Detective Epic Lyric Dramatic Thriller  }
  TYP = %w{Paperback Booklet Framed Carton Pocket Spiral Bound  }
  CONDITION = %w{ New Excellent Mint Used Fair Poor }


end
