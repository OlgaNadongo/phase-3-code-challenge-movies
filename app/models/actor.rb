class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

#     - `Actor#total_salary`
#   - returns the total salary for an actor based on the salary for each of their
#     roles
    def total_salary
        self.roles.sum("salary")
    end

#     - `Actor#blockbusters`
#   - returns a collection of all the `Movie` instances the actor has performed in
#     that have a `box_office_earnings` of over $50,000,000
    def blockbusters
        self.movies.map do |movie|
          if  movie.box_office_earnings>50000000
            movie
          end
        end

        # method 2
        # self.movies.where("box_office_earnings > ?", 50000000)
    end

#     - `Actor.most_successful`
#   - returns _one_ actor instance for the actor who has the highest total salary
#     for all their roles

    def self.most_successful
        self.all.sort_by{|actor| actor.roles.sum(:salary)}.last
    end
end