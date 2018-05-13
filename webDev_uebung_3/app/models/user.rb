class User < ActiveRecord::Base
  has_many :followers, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5}
end
