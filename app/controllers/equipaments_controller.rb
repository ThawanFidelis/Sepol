class EquipamentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /equipaments
  # GET /equipaments.json
  def index
    @equipaments = Equipament.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipaments }
    end
  end

  # GET /equipaments/1
  # GET /equipaments/1.json
  def show
    @equipament = Equipament.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipament }
    end
  end

  # GET /equipaments/new
  # GET /equipaments/new.json
  def new
    @equipament = Equipament.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipament }
    end
  end

  # GET /equipaments/1/edit
  def edit
    @equipament = Equipament.find(params[:id])
  end

  # POST /equipaments
  # POST /equipaments.json
  def create
    @equipament = Equipament.new(params[:equipament])

    respond_to do |format|
      if @equipament.save
        format.html { redirect_to @equipament, notice: 'Equipamento adicionado com sucesso.' }
        format.json { render json: @equipament, status: :created, location: @equipament }
      else
        format.html { render action: "new" }
        format.json { render json: @equipament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipaments/1
  # PUT /equipaments/1.json
  def update
    @equipament = Equipament.find(params[:id])

    respond_to do |format|
      if @equipament.update_attributes(params[:equipament])
        format.html { redirect_to @equipament, notice: 'Equipamento atualizado com sucesso.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipaments/1
  # DELETE /equipaments/1.json
  def destroy
    @equipament = Equipament.find(params[:id])
    @equipament.destroy

    respond_to do |format|
      format.html { redirect_to equipaments_url }
      format.json { head :ok }
    end
  end
end

