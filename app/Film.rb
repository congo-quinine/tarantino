class Film < ActiveRecord::Base
    has_one :rating
    has_many :events
    has_many :categories, through: :events
    has_many :words, through: :events


end