class DogsController < ApplicationController
	before_action :setup_new_dog_form, only: [:new, :create]

	def index
		@dogs = Dog.all
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def new
		
	end

	def create
		@new_dog_form.attributes = new_dog_form_params
		@new_dog_form.save
		redirect_to dogs_index_path
	end

	private
	def setup_new_dog_form
		@new_dog_form = Dog.new
	end

	def new_dog_form_params
		params.require(:dog).permit!
	end
end
