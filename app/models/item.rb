class Item < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    has_and_belongs_to_many :carts
    has_and_belongs_to_many :orders
    has_one_attached :catimage
    has_many :reviews
    has_many :users, through: :favorites
    has_many :favorites
end
