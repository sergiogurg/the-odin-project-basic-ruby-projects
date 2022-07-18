def bubble_sort(array)
  iterations = array.length - 1
  no_changes_count = 0
  until no_changes_count == iterations
    no_changes_count = 0
    iterations.times do |idx|
      if array[idx] > array[idx+1]
        aux = array[idx]
        array[idx] = array[idx+1]
        array[idx+1] = aux
      else
        no_changes_count += 1
      end
    end
  end
  array
end