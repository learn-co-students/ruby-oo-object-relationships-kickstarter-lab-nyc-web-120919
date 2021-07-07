require_relative "./Project_backer"

class Project
    attr_reader :title

    @@all = []
    
    def initialize(title)
        @title = title
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.filter{|projectBacker| projectBacker.project == self}
        .map{|projectBacker| projectBacker.backer}
    end
end