class SearchBase < ActiveRecord::Base
    self.abstract_class = true
    connects_to database: { writing: :searches, reading: :searches_replica }
end