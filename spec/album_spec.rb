require 'spec_helper'
require_relative '../lib/album'
require_relative '../lib/track'


describe Album do
  it 'has album title and song list' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', '4', '2Pac', 'Metallica'], duration: 10, price: 2.00)
    album1 = Album.new(album_title: 'God', tracks: [track1, track2])

    expect(album1.album_title).to eq 'God'
    expect(album1.song_list).to match_array ['track_title1', 'track_title2']
  end
  it 'finds the total runtime' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', '4', '2Pac', 'Metallica'], duration: 10, price: 2.00)
    album1 = Album.new(album_title: 'God', tracks: [track1, track2])

    expect(album1.runtime).to eq 250
  end
  it 'has a total price that totals all song prices' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', '4', '2Pac', 'Metallica'], duration: 10, price: 2.00)
    album1 = Album.new(album_title: 'God', tracks: [track1, track2])

    expect(album1.total_price).to eq 3.00
  end
  it 'has a list of unique artists in alphabetical order' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', '4', '2Pac', 'Metallica'], duration: 10, price: 2.00)
    album1 = Album.new(album_title: 'God', tracks: [track1, track2])

    expect(album1.all_artists).to eq ['2Pac', '4', 'Beatles', 'Beetles', 'Led Zeppelin', 'Metallica']

  end
  it 'can determine if it is a single' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
   # track2 = Track.new(title: 'track_title2', artists: ['Beetles', '4', '2Pac', 'Metallica'], duration: 10, price: 2.00)
    album1 = Album.new(album_title: 'God', tracks: [track1, track2])

    expect(album1).not_to be_single

  end
end
