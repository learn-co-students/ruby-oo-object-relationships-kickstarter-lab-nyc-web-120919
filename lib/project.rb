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

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |pb|
          pb.project == self
        end
        backers.map do |backers|
            backers.backer
        end
    end
end
