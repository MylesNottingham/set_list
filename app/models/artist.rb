class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  def average_song_length
    songs.average(:length)
  end
end
