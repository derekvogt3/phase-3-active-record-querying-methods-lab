class Show < ActiveRecord::Base

    def self.highest_rating

        Show.maximum("rating")
    end


    def self.most_popular_show

        rating = Show.maximum("rating")

        Show.find_by(rating:rating)

    end

    def self.lowest_rating
        Show.minimum("rating")

    end

    def self.least_popular_show

        Show.find_by(rating:Show.lowest_rating)

    end

    def self.ratings_sum

        Show.sum(:rating)


    end

    def self.popular_shows

        Show.where("rating > 5")

    end

    def self.hows_by_alphabetical_order
        Show.order(name: :desc
    end

end