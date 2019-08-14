module Algorithms
  class HeapSort
    def sort(array)
      num = array.size
      i = num / 2
      parent = 0
      child = 0
      temp = 0

      loop do
        if i > 0
          i -= 1
          temp = array[i]
        else
          num -= 1

          return array if num == 0

          temp = array[num]
          array[num] = array[0]
        end

        parent = i
        child = i * 2 + 1

        while child < num
          child += 1 if (child + 1 < num) && (array[child + 1] > array[child])

          if array[child] > temp
            array[parent] = array[child]
            parent = child
            child = parent * 2 + 1
          else
            break
          end
        end

        array[parent] = temp
      end
    end
  end
end
