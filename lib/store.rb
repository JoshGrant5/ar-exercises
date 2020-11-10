class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0, only_integer: true }
  validate :carries_apparel

  def carries_apparel
    carry = 0;
    if mens_apparel == true || womens_apparel == true
      carry += 1
    end
    if carry == 0
      errors.add(:mens_apparel, "must carry at least one type of apparel")
    end
  end

end
