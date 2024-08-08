def merge_sort(arr)
  return arr if arr.size <= 1
  mid = arr.size / 2
  merge(merge_sort(arr[0...mid]), merge_sort(arr[mid...arr.size]))
end

def merge(arr_1, arr_2)
  results = []

  until arr_1.empty? || arr_2.empty?
    results << (arr_1[0] <= arr_2[0] ? arr_1 : arr_2).shift
  end

  results.concat(arr_1).concat(arr_2)
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])