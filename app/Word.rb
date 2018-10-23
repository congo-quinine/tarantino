class Word < ActiveRecord::Base
    has_many :events 
    has_many :films, through: :events
    has_many :categories, through: :events

end