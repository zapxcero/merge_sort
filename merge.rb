def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  l = arr[0...mid]
  r = arr[mid..arr.length]
  left = merge_sort(l)
  right = merge_sort(r)
  merge(left, right)
end

def merge(l, r)
  result = []

  left_index = 0
  right_index = 0

  while left_index < l.length && right_index < r.length
    if l[left_index] < r[right_index]
      result.push l[left_index]
      left_index += 1
    else
      result.push r[right_index]
      right_index += 1
    end

  end
  result += l[left_index..-1]
  result += r[right_index..-1]
  result
end

p merge_sort([6, 7, 4, 2, 1, 3])
