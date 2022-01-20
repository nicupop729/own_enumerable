require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  def initialize (*list)
    @list = list
  end

  def each
    @list.each { |item| yield(item) if block_given? }

  end

end

list = MyList.new(1, 2, 3, 4)
print list.filter { |e| e.even?}

