# frozen_string_literal

# Class representation of Graph data structure
class Graph
  attr_reader :nodes

  def initialize(hash)
    @nodes = hash
  end

  def bfs(name)
    searched = []
    queue = []
    queue += @nodes[name]

    until queue.empty?
      current = queue.shift
      next if searched.include?(current)

      if seller?(current)
        puts "#{current} is a mango seller!"
        return true
      else
        queue += @nodes[current]
        searched << current
      end
    end

    false
  end

  def seller?(name)
    name[-1] == 'm'
  end
end

nodes = {}
nodes['you'] = %w[alice bob claire]
nodes['bob'] = %w[anuj peggy]
nodes['alice'] = %w[peggy]
nodes['claire'] = %w[thom jonny]
nodes['anuj'] = []
nodes['peggy'] = []
nodes['thom'] = []
nodes['jonny'] = []

graph = Graph.new(nodes)
p graph.bfs('you')
p graph.bfs('alice')
