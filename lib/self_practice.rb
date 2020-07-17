puts "in the main scope self is #{self}"

class Dog
  puts "in the class scope self is #{self}" 

  def self.class_method
    puts "in the class method scope self is #{self}"
  end

  def instance_method
    puts "in the instance method scope self is #{self}"
  end
end

Dog.class_method
Dog.new.instance_method

