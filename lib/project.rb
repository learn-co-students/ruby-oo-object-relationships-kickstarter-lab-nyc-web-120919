class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        my_array = []
        ProjectBacker.all.each do |project|
            if project.project == self
                my_array << project.backer
            end
        end
        my_array 
    end

end 