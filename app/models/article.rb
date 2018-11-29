class Article < ApplicationRecord
validates :title, presence: true
validates :title, uniqueness: true
validates :division, presence: true
validates :region, presence: true
validates :category, presence: true
validates :content, presence: true
validates :coordinateX, presence: true
validates :coordinateY, presence: true


end
