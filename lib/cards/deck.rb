# frozen_string_literal: true

require 'cards'

module Joker
  module PlayingCard
    class Deck
      attr_reader :cards

      def initialize
        @cards = []

        SUITS.each do |suit|
          add_suit(suit)
        end
      end

      private

      def add_suit(suit)
        RANKS.each do |rank|
          @cards << "#{rank} of #{suit}"
        end
      end
    end
  end
end
