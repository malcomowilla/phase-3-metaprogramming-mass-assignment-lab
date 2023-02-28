

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