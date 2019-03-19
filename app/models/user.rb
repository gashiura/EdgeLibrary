class User < ApplicationRecord
  has_many :reviews
  has_many :rentals
  has_many :favorites
end
