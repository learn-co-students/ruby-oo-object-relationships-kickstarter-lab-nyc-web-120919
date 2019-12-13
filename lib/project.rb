class Project

  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def project
    ProjectBacker.all.select {|projectbacker| projectbacker.project == self}
  end

  def backers
    self.project.map {|project| project.backer}
  end

  def self.all
    @@all
  end


end