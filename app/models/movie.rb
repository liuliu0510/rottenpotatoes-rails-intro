class Movie < ActiveRecord::Base
    #attr_accessible :title, :rating, :description, :release_date
    def self.all_ratings
        a = Array.new
        self.select("rating").uniq.each {|i| a.push(i.rating)}
        a.sort.uniq
    end
end
