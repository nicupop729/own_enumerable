module MyEnumerable
  def all?
    each do |elem| return false unless yield(elem)
    end
    true
  end

  def any?
    each do |elem| return true unless yield(elem)
    end
    false
  end

  def filter
    each do |elem| return elem
  end
end

