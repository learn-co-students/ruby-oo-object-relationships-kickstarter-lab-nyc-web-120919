require_relative "./Project_backer"

class Backer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.filter{|backProject| backProject.backer == self}
        .map{|backProject| backProject.project}
    end
end