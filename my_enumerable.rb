module MyEnumerable
  def all?
    each do |elem|
      return false unless yield(elem)
    end
    true
  end

  def any?
    each do |elem|
      return true if yield(elem)
    end
    false
  end

  def filter
    array_filter = []
    each do |elem|
      array_filter << (elem) if yield elem
    end
    array_filter
  end
end
