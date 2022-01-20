class MyList 
  def initialize (*list)
    @list = list
  end

  def each
    @list.each do { |item| yeild(item) if block_given? }
  end

end

my_class = MyList.new(1, 2, 3)

