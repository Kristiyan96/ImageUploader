class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
end
