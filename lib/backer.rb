class Backer

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backer
    ProjectBacker.all.select {|projectbacker| projectbacker.backer == self}
  end

  def backed_projects
    self.backer.map {|backer| backer.project}
  end

  def self.all
    @@all
  end


end