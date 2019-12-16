class Project

    @@all = [] 
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    
    def backers
        project_backers = ProjectBacker.all.select do |pb|
            pb.project == self
        end
        project_backers.map do |pb|
            pb.backer
        end

    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

end