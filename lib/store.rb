class Store < ActiveRecord::Base
    has_many :employees

    validates :name, presence: true, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
    validates :mens_apparel, :womens_apparel, inclusion: { in: [true, false] }
    validate :must_sell_one_of

    before_destroy :check_if_employees

    def must_sell_one_of
        if mens_apparel == false && womens_apparel == false
            errors.add(:mens_apparel, :womens_apparel, "mens_apparel and womens_apparel cannot both be false")
        end
    end

    private
        def check_if_employees
            if employees.size > 0
                puts "Sorry you may not delete that store"
                throw :abort
            end
        end

end
