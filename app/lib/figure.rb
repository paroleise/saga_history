class Figure
  attr_accessor :name, :path, :catchcopy, :job, :birth, :death, :color, :script

  def initialize(name, path, catchcopy, job,birth, death, color, script)
    @name = name
    @path = path
    @catchcopy = catchcopy
    @job = job
    @birth = birth
    @death = death
    @color = color
    @script = script
  end

end
