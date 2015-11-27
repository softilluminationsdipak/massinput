require 'roo'
class MassInputsController < ApplicationController

	before_filter :find_mass_input, only: [:update, :edit, :destroy, :show]
	
	def index
		@mass_inputs = Massinput.all
	end

	def new
		@mass_input = Massinput.new
	end

	def create
		@mass_input = Massinput.new(mass_input_params)
		if @mass_input.valid?
			@mass_input.save
			redirect_to mass_inputs_path, notice: 'Successfully created.'
		else
			render 'new'
		end
	end

	def update
		if @mass_input.update_attributes(mass_input_params)
			redirect_to mass_inputs_path, notice: 'Successfully Updated.'
		else
			render 'edit'
		end
	end

	def edit
	end

	def show
	end

	def destroy
		@mass_input.destroy if @mass_input.present?
		redirect_to mass_inputs_path, notice: 'Successfully deleted.'
	end

	def import
		file = params[:massinput][:file].path
		mass_inputs = Spreadsheet.open params[:massinput][:file].path
		mass_inputs.worksheets
		sheet1 = mass_inputs.worksheet 0
		sheet1.each_with_index do |row, index|
			if index > 0
				Massinput.create(vet_last_name: row[0], vet_first_name: row[1], dob: row[2], ssn: row[3], facility_name: row[4], facility_type_desc: row[5], vha_eligibility: row[6], vash_program: row[7], vash_application_received: row[8], vash_voucher_recieved_date: row[9], vash_exp_date: row[10], vash_comments: row[11], ssvf_assigned_provider: row[12], housing_plan: row[13], apartment_source: row[14])
			end
		end
		redirect_to mass_inputs_path, notice: 'Successfully imported.'
	end

	private

	def find_mass_input
		@mass_input = Massinput.find(params[:id])
	end

	def mass_input_params
		params.require(:massinput).permit(:vet_last_name, :vet_first_name, :dob, :ssn, :facility_name, :facility_type_desc, :vha_eligibility, :vash_program, :vash_application_received, :vash_voucher_recieved_date, :vash_exp_date, :vash_comments, :ssvf_assigned_provider, :housing_plan, :apartment_source)
	end

end
