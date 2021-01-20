class Backer
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        backer_with_project= ProjectBacker.all.select do |project_backer|
            project_backer.backer == self 
        end 
        backer_with_project.map do |backer_projects|
            backer_projects.project
        end
    end 

end
