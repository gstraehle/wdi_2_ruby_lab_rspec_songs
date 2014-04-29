require_relative '../lib/track'
require 'pry'

class Album

  attr_reader :album_title, :tracks, :song_list

  def initialize(album_title:, tracks:)
    @album_title = album_title
    @tracks = tracks
  end

  def song_list
    tracks.map { |track| track.title }
  end

  def runtime
    tracks.map { |track| track.duration }.reduce(:+)
  end

  def total_price
    tracks.map { |i| i.price }.reduce(:+)
  end

  def all_artists
    tracks.map{|track| track.artists }.reduce(:+).uniq.sort
  end
end

#binding.pry


