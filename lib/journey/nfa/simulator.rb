require 'strscan'

module Journey
  module NFA
    class MatchData
      attr_reader :memos

      def initialize memos
        @memos = memos
      end
    end

    class Simulator
      attr_reader :tt

      def initialize transition_table
        @tt = transition_table
      end

      def simulate string
        input = StringScanner.new string
        state = tt.eclosure 0
        until input.eos?
          sym   = input.scan(%r([/.?]|[^/.?]+))

          # FIXME: tt.eclosure is not needed for the GTG
          state = tt.eclosure tt.move(state, sym)
        end

        acceptance_states = state.find_all { |s|
          tt.accepting? tt.eclosure(s).sort.last
        }

        return if acceptance_states.empty?

        memos = acceptance_states.map { |x| tt.memo x }.flatten.compact

        MatchData.new memos
      end

      alias :=~    :simulate
      alias :match :simulate
    end
  end
end
