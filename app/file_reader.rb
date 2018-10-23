require 'pry'

class DBPopulater < ActiveRecord::Base

  class Parser
    attr_accessor :col_names
    @@data = []

    def self.parse(file_path)
      data = File.new(file_path, "r")
      @col_names = data.gets.strip.split(",")

      @col_names[0..3] = "primary_title", "category", "word", "minutes_in"

      while (line = data.gets)
        event_hash = {}
        i = 0
        line.strip.split(",").each { |value|
          event_hash[@col_names[i]] = value
          i += 1
        }
        @@data << event_hash
      end
    end

    def self.data
      @@data
    end

  end
    

  Parser.parse("./tarantino.csv")
  parsed_data = Parser.data

  parsed_data.each do |event|
      Word.create(event.word)
  end

  parsed_data.each do |event|
      Category.create(event.category)
  end

end
