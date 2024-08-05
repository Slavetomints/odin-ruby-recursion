def fib(num)
  arr = [0]
  for i in (0..num)
    if i == 0 || i == 1
      arr.push(1)
    end

    if i > 2
      next_num = arr.last(2).inject { |sum, num| sum + num}
      arr.push(next_num)
    end
  end
  puts arr
  return arr
end

fib(8)