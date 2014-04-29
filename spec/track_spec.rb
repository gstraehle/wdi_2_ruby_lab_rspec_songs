require 'spec_helper'
require_relative '../lib/track'

describe Track do
  it 'has a title, list of artists, duration, and time' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', 4, '2Pac', 'Metallica'], duration: 10, price: 2.00)

    expect(track1.title).to eq 'track_title1'
    expect(track1.artists).to match_array ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica']
    expect(track1.duration).to eq 240
    expect(track1.price).to eq 1.00
    expect(track2.title).to eq 'track_title2'
    expect(track2.artists).to match_array ['Beetles', 4, '2Pac', 'Metallica']
    expect(track2.duration).to eq 10
    expect(track2.price).to eq 2.00
  end
  it 'has a discount price for a track' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', 4, '2Pac', 'Metallica'], duration: 10, price: 2.00)

    expect(track1.discount(0.25)).to eq 0.75
  end

  it 'has the ability to reset its price back to the original' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', 4, '2Pac', 'Metallica'], duration: 10, price: 2.00)

    expect(track1.discount(0.25)).to eq 0.75
    expect(track1.reset).to eq 1.00
    expect(track1.reset).to eq 1.00

    expect(track2.discount(0.25)).to eq 1.50
    expect(track2.reset).to eq 2.00
    expect(track2.reset).to eq 2.00
  end

end
