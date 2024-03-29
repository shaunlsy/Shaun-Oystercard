require_relative 'oystercard'
require_relative 'station'

class Journey
    attr_reader :journeys, :entry_station, :exit_station
    attr_accessor :station

    def initialize
        @entry_station = nil
        @exit_station = nil
        @journeys = []
    end

    def in_journey? 
        !!entry_station  # same as @entry_station != nil
    end

    def starts(station)
        @entry_station = station
    end

    def ends(station)
        @exit_station = station
    end

    def complete?
        if @entry_station != nil && @exit_station != nil
            return true
        end
    end
end