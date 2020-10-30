class Project

    attr_reader :title
    @@all = []

    def initialize (title)
        @title = title 

        @@all << self
    end 

    def self.all 
        @@all 
    end 

    def add_backer(backer)
        #binding.pry
        ProjectBacker.new(self, backer)
    end 

    def backers
        #back_project.all.select { |proj| proj.backer == self }
        backed = ProjectBacker.all.select {|projectbacker| projectbacker.project == self}

        backed.map {|isBacked| isBacked.backer}
    end

end 