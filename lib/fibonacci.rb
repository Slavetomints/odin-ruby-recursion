def fib(num)
  arr = [0]
  for i in (0..num)
    if i == 0 || i == 1
      arr.push(1)
    elsif i > 2
      next_num = arr.last(2).inject { |sum, num| sum + num}
      arr.push(next_num)
    end
  end
  p arr
end

def fibs_rec(num)
  return [0,1] if num == 0
  arr = fibs_rec(num - 1)
  arr.push(arr[-1] + arr[-2])
  p arr
end

fib(8)

fibs_rec(8)