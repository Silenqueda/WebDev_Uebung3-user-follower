class User < ActiveRecord::Base
  has_many :followers
  validates :title, presence: true,
                    length: { minimum: 5}
end
