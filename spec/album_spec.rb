require 'spec_helper'
require_relative '../lib/album'
require_relative '../lib/track'


describe Album do
  it 'has album title and song list' do
    track1 = Track.new(title: 'track_title1', artists: ['Beatles', 'Led Zeppelin', '2Pac', 'Metallica'], duration: 240, price: 1.00)
    track2 = Track.new(title: 'track_title2', artists: ['Beetles', 4, '2Pac', 'Metallica'], duration: 10, price: 2.00)
    album1 = Album.new(album_title: 'God', song_list: [track1.title, track2.title])

    expect(album1.album_title).to eq 'God'
    expect(album1.song_list).to match_array ['track_title1', 'track_title2']
  end
end
