require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end
list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
