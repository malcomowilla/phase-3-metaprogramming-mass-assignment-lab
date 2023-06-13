



class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = {name:"Bob", hair_color:"Brown"}
puts bob = Person.new(bob_attributes)
puts bob.name
puts bob.hair_color

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }
susan = Person.new(susan_attributes)
puts susan.height










# Person
# with a longer list of attributes
# will assign an arbitrary number of properties on initialization
# with a different, shorter list of attributes
# will also assign an arbitrary number of properties on initialization







class Person
  # your code here
  def initialize(attributes = nil)
    if attributes
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
end