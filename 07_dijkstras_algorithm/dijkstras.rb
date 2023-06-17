# frozen_string_literal: true

class DijkstrasAlgorithm
  def initialize(graph)
    @graph = graph
  end

  def shortest_path(start, finish)
    costs = build_costs_hash(start)
    parents = build_parents_hash(start)
    processed = []

    node = find_lowest_cost_node(costs, processed)

    while node
      @graph[node].each do |neighbour, cost|
        new_cost = costs[node] + cost

        if new_cost < costs[neighbour]
          costs[neighbour] = new_cost
          parents[neighbour] = node
        end
      end

      processed << node
      node = find_lowest_cost_node(costs, processed)
    end

    p costs
    p parents
  end

  private

  def build_costs_hash(node)
    costs = Hash.new(Float::INFINITY)
    @graph[node].each { |k, v| costs[k] = v }
    costs
  end

  def build_parents_hash(node)
    parents = {}
    @graph[node].each { |k, _v| parents[k] = node }
    parents
  end

  def find_lowest_cost_node(costs, processed)
    lowest_cost_node = nil
    lowest_cost = Float::INFINITY

    costs.each do |node, cost|
      next if processed.include?(node)

      if cost < lowest_cost
        lowest_cost = cost
        lowest_cost_node = node
      end
    end

    lowest_cost_node
  end
end

graph_7_1_a = {
  start: {
    a: 5,
    b: 2
  },
  a: {
    c: 4,
    d: 2
  },
  b: {
    a: 8,
    c: 7
  },
  c: {
    fin: 3,
    d: 6
  },
  d: {
    fin: 1
  },
  fin: {}
}

DijkstrasAlgorithm.new(graph_7_1_a).shortest_path(:start, :fin)

graph_7_1_b = {
  start: {
    a: 10
  },
  a: {
    b: 20
  },
  b: {
    fin: 30,
    c: 1
  },
  c: {
    a: 1
  },
  fin: {}
}

DijkstrasAlgorithm.new(graph_7_1_b).shortest_path(:start, :fin)

graph_7_1_c = {
  start: {
    a: 2,
    b: 2
  },
  a: {
    c: 2,
    fin: 2
  },
  b: {
    a: 2,
  },
  c: {
    b: -1,
    fin: 2
  },
  fin: {}
}

DijkstrasAlgorithm.new(graph_7_1_c).shortest_path(:start, :fin)