class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        backer = self
        ProjectBacker.new(project, backer)
    end

    def backed_projects
        pjs = ProjectBacker.all.select {|project| project.backer == self}
        pjs.map {|pj| pj.project}
    end

end
