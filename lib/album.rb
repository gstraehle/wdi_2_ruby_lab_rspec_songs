require_relative '../lib/track'

class Album

  attr_reader :album_title, :song_list

  def initialize(album_title:, song_list:)
    @album_title = album_title
    @song_list = song_list
  end
end
