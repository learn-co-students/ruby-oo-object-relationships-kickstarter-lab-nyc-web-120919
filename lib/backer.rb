class Backer 
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers.map {|project_backer| project_backer.project}
    end

    def project_backers
        ProjectBacker.all.select{|project_backer| project_backer.backer == self}
    end


end