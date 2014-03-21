class StringSet
  attr_accessor :items
  #attr_writer :items
  #attr_reader :items

  def initialize(elements = [])
    @items = elements
  end

  def add(element)
    @items << element unless self.exists?(element)
  end

  def exists?(element)
    @items.include? element
  end

  def union(set)
    union_items = @items | set.items
    StringSet.new(union_items)
  end

  def union!(set)
    @items = @items | set.items
    self
  end
end


#set_a = StringSet.new
#set_b = StringSet.new
#
#set_a.add("Ruby")
#set_b.add("Python")
#set_b.add("Ruby")
#
#set_a.union(set_b)
#=> <#StringSet "Ruby", "Python">
