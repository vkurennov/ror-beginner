class Train
  attr_accessor :type, :model, :number, :number_of_wagons

  def initialize(number, options = {})
    @number = number
    @type = options[:type] || 'Unknown'
    @model = options[:model] || 'Unknown'
    @number_of_wagons = options[:number_of_wagons] || 0
  end
end

class Foo
  def bar(key)
    h = { a: 1, b: 2 }
    value = h[key]
    value ||= 0
    # ... используем value
  end

  def long_method
    sleep(3)
  end

  def memoization
    @m ||= long_method
  end
end

class User
  attr_accessor :name

  def has_name?
    !!name
  end

  def has_not_name?
    !has_name?
  end

  def name=(value)
    @name = value.capitalize
  end
end

class Color
  COLORS = { red: '#f00', green: '#0f0', blue: '#00f', white: '#fff' }

  def code(name)
    @code = COLORS[name] || '#000'
  end

  alias_method :by_name, :code
end
