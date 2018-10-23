class Event < ActiveRecord::Base
    belongs_to :film
    belongs_to :word
    belongs_to :category

end