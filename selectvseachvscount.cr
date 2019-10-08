require "benchmark"

class Item
  property owner_id = 0

  def initialize(@owner_id)
  end
end

Items = Hash(Int32, Item).new

USER_ID = 3

10000.times do |i|
  Items[i] = Item.new(USER_ID)
end

Benchmark.ips do |x|
  x.report("select_me_baby_one_more_time") { select_me_baby_one_more_time }
  x.report("items.values.count") { itemsvaluescount }
  x.report("regularloopwithlocalvariable") { regularloopwithlocalvariable }
end

def select_me_baby_one_more_time
  count = Items.select { |_, v|
    v.owner_id == USER_ID
  }.size
  count
end

def itemsvaluescount
  count = Items.count { |_, v|
    v.owner_id == USER_ID
  }
  count
end

def regularloopwithlocalvariable
  count = 0
  Items.each do |_, v|
    count += 1 if v.owner_id == USER_ID
  end
  count
end
