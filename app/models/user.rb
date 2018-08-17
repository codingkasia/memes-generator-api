class User < ApplicationRecord
  has_many :memes
  has_many :comments
end
