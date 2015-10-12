class NamesController < ApplicationController
  before_action :set_name, only: [:show, :edit, :update, :destroy]
  before_action :set_all_names

  # GET /names
  # GET /names.json
  def index
    @names = Name.all
  end

  # GET /names/1
  # GET /names/1.json
  def show
  end

  # GET /names/new
  def new
    @name = Name.new
  end

  # GET /names/1/edit
  def edit
  end

  # POST /names
  # POST /names.json
  def create
    @name = Name.new(name_params)
    if @name.save
      flash[:notice] = "Saved successfully."
    else
      flash[:error] = "Not saved."
      redirect_to :back
    end
  end

  # PATCH/PUT /names/1
  # PATCH/PUT /names/1.json
  def update
    if @name.update(name_params)
      flash[:notice] = "Name was updated."
    else
      flash[:error] = "Something went wrong."
    end
  end

  # DELETE /names/1
  # DELETE /names/1.json
  def destroy
    @name.destroy
    flash[:notice] = "Name was successfully destroyed."
  end

  private

    def set_all_names
      @names = Name.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_name
      @name = Name.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def name_params
      params.require(:name).permit(:name)
    end
end
