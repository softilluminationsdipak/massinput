class CreateMassinputs < ActiveRecord::Migration
  def change
    create_table :massinputs do |t|
      t.string :vet_last_name
      t.string :vet_first_name
      t.date :dob
      t.string :ssn
      t.string :facility_name
      t.string :facility_type_desc
      t.string :vha_eligibility
      t.string :vash_program
      t.date :vash_application_received
      t.date :vash_voucher_recieved_date
      t.date :vash_exp_date
      t.text :vash_comments
      t.string :ssvf_assigned_provider
      t.string :housing_plan
      t.string :apartment_source

      t.timestamps
    end
  end
end
