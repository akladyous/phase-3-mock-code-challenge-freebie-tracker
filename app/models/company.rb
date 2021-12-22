class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        self.freebies.create(item_name: item_name, value: value, dev: dev)
    end

    def self.oldest_company
        min = Company.minimum(:founding_year)
        Company.where(founding_year: min)
    end
end
