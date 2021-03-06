# -*- encoding : utf-8 -*-
class DonationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.where(donator_id: current_user.id)
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
  end

  # GET /donations/new
  def new
    @donation = Donation.new
    @items =[ ["Brinquedos","Brinquedos"],
              ["Roupas","Roupas"],
              ["Dinheiro","Dinheiro"],
              ["Alimentos", "Alimentos"]]
  end

  # GET /donations/1/edit
  def edit
    @items =[ ["Brinquedos","Brinquedos"],
              ["Roupas","Roupas"],
              ["Dinheiro","Dinheiro"],
              ["Alimentos", "Alimentos"]]
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(donation_params)

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'Doação realizada com sucesso!' }
        format.json { render :show, status: :created, location: @donation }
      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Doação atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_params
      params[:donation].permit(:item, :quantity, :value, :date, :institution_id).merge(donator_id: current_user.id)
    end
end
