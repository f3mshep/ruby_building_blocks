def stock_picker(prices)
  counter_hash = Hash.new

  prices.each_with_index do |start_day, idx1|
    new_length = prices.length - idx1 + 1
    remaining_days = prices.slice(idx1, new_length)
    remaining_days.each_with_index do |end_day, idx2|
       counter_hash[[idx1,idx2]] = (end_day - start_day)
    end
  end

  res = counter_hash.sort_by{|days, value| -value}
  res[0][0]
end
