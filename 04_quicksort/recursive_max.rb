# frozen_string_literal: true

def recursive_max(arr)
  return nil if arr.empty?
  return arr[0] if arr.length == 1

  remaining_max = recursive_max(arr[1..])
  arr[0] > remaining_max ? arr[0] : remaining_max
end

puts recursive_max([5, 1, 9, 3])
