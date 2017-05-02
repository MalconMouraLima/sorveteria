class IcecreamsController < ApplicationController
  before_action :find_icecream, only: [:show, :edit, :update, :destroy]

	def index
		@icecream = Icecream.all.order("created_at DESC")
	end

	def show
	end

	def new
    @icecream = current_user.icecreams.build
	end

	def create
		@icecream = current_user.icecreams.build(icecream_params)

		if @icecream.save
			redirect_to @icecream, notice: "Successfully created new ice cream"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @icecream.update(icecream_params)
			redirect_to @icecream
		else
			render 'edit'
		end
	end

	def destroy
		@icecream.destroy
		redirect_to root_path, notice: "Successfully deleted ice cream"
	end

	private

	def icecream_params
		params.require(:icecream).permit(:title, :description, :price, :image)
	end

	def find_icecream
		@icecream = Icecream.find(params[:id])
	end

end
