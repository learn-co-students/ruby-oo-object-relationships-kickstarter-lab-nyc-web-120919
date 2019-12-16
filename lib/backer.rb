class Backer

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |pb|
          pb.backer == self
        end
        project_backers.map do |pb|
          pb.project
        end
       
    end
end
