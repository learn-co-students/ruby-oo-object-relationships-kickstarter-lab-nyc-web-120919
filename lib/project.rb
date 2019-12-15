require "pry"
class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        project = self
        ProjectBacker.new(project, backer)
    end

    def backers
        pjs = ProjectBacker.all.select {|project| project.project == self}
        pjs.map {|pj| pj.backer}
    end

end