class CreateEvents < ActiveRecord::Migration[4.2]

    def change
        create_table :categories do |t|
            t.string :event
        end
    
        create_table :words do |t|
            t.string :word
        end
   
    
        create_table :events do |t|
            t.belongs_to :film, index: true
            t.belongs_to :word, index: true
            t.belongs_to :category, index: true
            t.integer :minutes_in
        end

        create_table :films do |t|
            t.string :title_constant
            t.string :primary_title
            t.integer :year
            t.integer :run_time
        end

        create_table :ratings do |t|
            t.string :title_constant
            t.integer :rating
            t.belongs_to :film, index: true
        end

    end
end