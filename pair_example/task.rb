class Task
  attr_reader :title, :description, :priority_level

  def initialize(title, description, priority_level)
    @title          = title
    @description    = description
    @priority_level = priority_level
  end

  def urgent?
    priority_level <= 3
  end
end