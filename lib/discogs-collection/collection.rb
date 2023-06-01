class DiscogsCollection

  class Collection < Simple::Group

    def self.item_class
      CollectionItem
    end

  end

end