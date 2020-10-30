class Backer 

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all 
        @@all 
    end 


    def back_project(name)
        ProjectBacker.new(name, self)
    end 

    def backed_projects
        #back_project.all.select { |proj| proj.backer == self }
        backed = ProjectBacker.all.select {|projectback| projectback.backer == self}

        backed.map {|isBacked| isBacked.project}
    end


end 