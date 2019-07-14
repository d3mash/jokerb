# frozen_string_literal: true

require 'cards/deck'

RSpec.describe Joker::PlayingCard::Deck do
  subject(:deck) { described_class.new.cards }

  it 'creates a deck of cards' do
    expect(deck.size).to eq(36)
    expect(deck.first).to include('of')
  end
end
