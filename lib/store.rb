class Store < ActiveRecord::Base
    has_many :employees

    validates :name, presence: true, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
    validates :mens_apparel, :womens_apparel, inclusion: { in: [true, false] }
    validate :must_sell_one_of

    def must_sell_one_of
        if mens_apparel == false && womens_apparel == false
            errors.add(:mens_apparel, :womens_apparel, "mens_apparel and womens_apparel cannot both be false")
        end
    end

end
