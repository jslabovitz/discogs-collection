require 'minitest/autorun'
require 'minitest/power_assert'

require 'discogs-collection'

class DiscogsCollection

  class Test < MiniTest::Test

    def setup
      @discogs = DiscogsCollection.new(root_dir: '~/Music/MusicBox/discogs')
    end

    def inspect
      "<#{self.class}>"
    end

    def test_orphaned
      info = @discogs.orphaned
      assert { info.kind_of?(Hash) }
    end

    def test_orphaned_image_files
      files = @discogs.orphaned_image_files
      assert { files.kind_of?(Array) }
    end

  end

end