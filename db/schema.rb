    # This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_18_053740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "models", force: :cascade do |t|
    #property
    t.integer "user_id"
    t.decimal "price"
    t.decimal "closing_costs"
    t.decimal "repair_costs"
    t.decimal "after_repair_value"
    t.decimal "rent_monthly"
    t.decimal "property_upkeep_monthly"
    t.decimal "insurance_monthly"
    t.decimal "hoa_fees_monthly"
    t.decimal "utilities_monthly"
    #local_economy
    t.decimal "value_growth_percent"
    t.decimal "property_taxes_percent"
    #macro economy
    t.decimal "inflation_rate_percent"
    #management
    t.decimal "management_fees_percent"
    t.decimal "average_tenant_stay_yrs"
    t.decimal "average_vacancy_length_months"
    t.decimal "earnings_reinvestment_percent"
    #financing
    t.decimal "downpayment_percent"
    t.decimal "interest_rate_percent"
    t.decimal "property_mortgage_insurance_monthly"
    t.decimal "loan_term_length_years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
