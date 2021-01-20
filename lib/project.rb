class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self,backer)

    end

    def backers
    backer_with_project= ProjectBacker.all.select do |project_backer|
        project_backer.project == self 
    end 
    backer_with_project.map do |backer_projects|
        backer_projects.backer
    end

end 

end 