class City < ActiveRecord::Base
    validates :name, presence: true
    validates :short_name, presence: true
end
