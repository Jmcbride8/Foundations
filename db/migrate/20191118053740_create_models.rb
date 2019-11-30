class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.integer :user_id 
      t.decimal :price, :null => true
      t.decimal :closing_costs, :null => true
      t.decimal :repair_costs, :null => true
      t.decimal :after_repair_value, :null => true
      t.decimal :rent_monthly, :null => true
      t.decimal :property_upkeep_monthly, :null => true
      t.decimal :insurance_monthly, :null => true
      t.decimal :hoa_fees_monthly, :null => true
      t.decimal :utilities_monthly, :null => true
      t.decimal :value_growth_percent, :null => true
      t.decimal :property_taxes_percent, :null => true
      t.decimal :inflation_rate_percent, :null => true      
      t.decimal :management_fees_percent, :null => true
      t.decimal :average_tenant_stay_yrs, :null => true
      t.decimal :average_vacancy_length_months, :null => true
      t.decimal :earnings_reinvestment_percent, :null => true
      t.decimal :downpayment_percent, :null => true
      t.decimal :interest_rate_percent, :null => true
      t.decimal :property_mortgage_insurance_monthly, :null => true
      t.decimal :loan_term_length_years, :null => true
      t.timestamps
    end
  end
end
