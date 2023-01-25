class CompanyArea < ApplicationRecord

    def total_product
        UserProcess.where(company_area: self).sum(:product)
      end

      
end
