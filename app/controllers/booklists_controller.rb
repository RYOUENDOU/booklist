class BooklistsController < ApplicationController
before_action :set_booklist, only: [:show, :edit, :update, :destroy]


  	def index
        @booklists = Booklist.all
	end   

	def show
	   @comments = @booklist.comments	
    end   
	
	def new
		@booklist = Booklist.new
    end   
	
	def edit
        @comments = @booklist.comments
   	end
	
	def create
		@booklist = Booklist.new(booklist_params)
    	if @booklist.save
    		redirect_to booklists_path
    	else
    		render :new 
    	end	
    end   
	
	def update
		@booklist.save
		respond_to do |format|
      	@booklist.update(booklist_params)
        format.html { redirect_to @booklist, notice: 'User was successfully updated.' }
    end
    end   	
    

    def destroy
    	@booklist.destroy
    	respond_to do |format|
        format.html { redirect_to booklists_path, notice: 'User was successfully destroyed.' }
    end
    end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_booklist
      @booklist = Booklist.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booklist_params
      params.require(:booklist).permit(:title, :price, :detail, :rate)
    end
end


