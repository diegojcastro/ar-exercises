class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_men_or_women_apparel

  def must_carry_men_or_women_apparel
    if mens_apparel==false && womens_apparel==false
      errors.add(:mens_apparel, "must carry men's or women's apparel")
    end
  end
end
