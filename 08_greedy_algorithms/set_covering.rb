# frozen_string_literal: true
require 'set'

class StateCoverage
  def initialize(stations)
    @stations = stations
  end

  def find_best_coverage(required)
    final_stations = Set.new

    until required.empty?
      best_station = nil
      states_covered = Set.new
  
      @stations.each do |station, states|
        covered = required & states
        if covered.length > states_covered.length
          best_station = station
          states_covered = covered
        end
      end

      final_stations << best_station
      required -= states_covered
    end

    final_stations
  end
end

states_required = Set.new(%w[mt wa or id nv ut ca az])
stations = {
  kone: Set.new(%w[id nv ut]),
  ktwo: Set.new(%w[wa id mt]),
  kthree: Set.new(%w[or nv ca]),
  kfour: Set.new(%w[nv ut]),
  kfive: Set.new(%w[ca az])
}

coverage = StateCoverage.new(stations).find_best_coverage(states_required)
puts coverage
