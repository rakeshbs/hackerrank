
def qsort(array, m, n)
  return if m >= n
  c = partition(array, m, n)
  qsort(array, m, c - 1)
  qsort(array, c + 1, n)
end

def swap(array, i, j)
  s = array[i]
  array[i] = array[j]
  array[j] = s
end

def partition(array, m, n)
  p = n
  i = m
  m.upto(n) do |j|
    if array[p] > array[j]
      swap(array, i, j)
      i += 1
    end
  end
  swap(array, i, p) if array[i] > array[p]
  puts array.map(&:to_s).join(' ')
  i
end

t = gets
array = gets.strip.chomp.split(' ').map(&:to_i)
qsort(array, 0, array.size - 1)
