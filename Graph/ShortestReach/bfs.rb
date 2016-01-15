t = gets.strip.chomp.to_i

t.times do
  n, m = gets.strip.chomp.split(' ').map(&:to_i)
  graph = Hash.new {|h,k| h[k] = [] }
  visited = [false] * n
  distance = {}
  m.times do
    n1, n2= gets.strip.chomp.split(' ').map(&:to_i)
    graph[n1] << n2 if graph[n1].index(n2).nil?
    graph[n2] << n1 if graph[n2].index(n1).nil?
  end

  s = gets.strip.chomp.to_i

  queue = [s]
  distance[s] = 0
  visited[s] = true
  while queue.size > 0
    current = queue.shift
    current_distance = distance[current]
    graph[current].each do |n|
      unless visited[n]
        visited[n] = true
        distance[n] = current_distance + 1
        queue << n
      end
    end
  end

  result = ""
  1.upto(n) do |i|
    next if i == s
    unless distance[i].nil?
      result += "#{distance[i] * 6} "
    else
      result += "-1 "
    end
  end

  puts result.strip.chomp
end
