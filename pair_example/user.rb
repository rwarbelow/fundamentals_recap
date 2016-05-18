require_relative 'task'

class User
  attr_reader :email, :username, :active, :tasks

  def initialize(email)
    @email    = email
    @username = generate_username
    @active   = true
    @tasks    = []
  end

  def generate_username
    email.split("@").first
  end

  def active? 
    active
  end

  def activate!
    @active = true
  end

  def retire!
    @active = false
  end

  def add_task(title, description, priority_level)
    if can_add_task?
      tasks << Task.new(title, description, priority_level)
    else
      "Task list is full. Cannot add new task."
    end
  end

  def count_of_priority(num)
    tasks.count { |task| task.priority_level == num }
  end

  def can_add_task?
    tasks.count <= 5
  end
end

###################################

user = User.new("rachel@turing.io") 
puts user.email
puts user.retire!
puts user.add_task("learn ruby", "go to class, complete my homework", 4)
puts user.add_task("eat dinner", "yummy sandwiches", 2)
puts user.count_of_priority(4)