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
        projects_array = ProjectBacker.all.select do |pb|
          pb.backer == self
        end
        projects_array.map do |single_matching_project|
            single_matching_project.project
        end
    end
end
