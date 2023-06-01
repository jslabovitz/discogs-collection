class DiscogsCollection

  class TrackList < Array

    def flatten
      tracks = []
      each do |track|
        tracks << track
        tracks += track.sub_tracks.flatten if track.type == 'index'
      end
      tracks
    end

  end

end