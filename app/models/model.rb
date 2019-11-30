class Model < ApplicationRecord

  belongs_to :user

  #economy
  #validates :inflation_rate_percent, allow_blank: true, numericality: true

  #financing
  #validates :downpayment_percent, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :interest_rate_percent, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :property_mortgage_insurance_monthly, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :loan_term_length_years, allow_blank: true, numericality: { only_integer: true }
  #validates :value_growth_percent, allow_blank: true, numericality: true

  #local market
  #validates :property_taxes_percent, allow_blank: true, numericality: {greater_than_or_equal_to: 0}

  #management
  #validates :management_fees_percent, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :average_tenant_stay_yrs, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :average_vacancy_length_months, allow_blank: true, numericality: {greater_than_or_equal_to: 0}

  #property
  #validates :price, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :closing_costs, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :repair_costs, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :after_repair_value, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :property_upkeep_monthly, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :insurance_monthly, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :hoa_fees_monthly, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :utilities_monthly, allow_blank: true, numericality: {greater_than_or_equal_to: 0}
  #validates :earnings_reinvestment_percent, allow_blank: true, numericality: {greater_than_or_equal_to: 0}




end
