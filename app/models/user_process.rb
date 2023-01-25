class UserProcess < ApplicationRecord
  belongs_to :company_area

  def calculate_product
    self.product = weight * evaluation
  end

  
end
