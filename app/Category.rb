class Category < ActiveRecord::Base
    has_many :events
    has_many :films, through: :events
    has_many :words, through: :events


end