class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal: 0, only_integer: true }
  validate :carries_apparel

  before_destroy :check_employees

  def carries_apparel
    carry = 0;
    if mens_apparel == true || womens_apparel == true
      carry += 1
    end
    if carry == 0
      errors.add(:mens_apparel, "must carry at least one type of apparel")
    end
  end

  private 
  def check_employees
    if self.employees.size > 0
      errors.add(:employees, 'cannot destroy a store with employees')
      return false;
    end
  end

end
