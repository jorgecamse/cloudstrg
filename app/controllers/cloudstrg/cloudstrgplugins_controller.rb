require_dependency "cloudstrg/application_controller"

module Cloudstrg
  class CloudstrgpluginsController < ApplicationController
    # GET /cloudstrgplugins
    # GET /cloudstrgplugins.json
    def index
      @cloudstrgplugins = Cloudstrgplugin.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @cloudstrgplugins }
      end
    end
  
    # GET /cloudstrgplugins/1
    # GET /cloudstrgplugins/1.json
    def show
      @cloudstrgplugin = Cloudstrgplugin.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @cloudstrgplugin }
      end
    end
  
    # GET /cloudstrgplugins/new
    # GET /cloudstrgplugins/new.json
    def new
      @cloudstrgplugin = Cloudstrgplugin.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @cloudstrgplugin }
      end
    end
  
    # GET /cloudstrgplugins/1/edit
    def edit
      @cloudstrgplugin = Cloudstrgplugin.find(params[:id])
    end
  
    # POST /cloudstrgplugins
    # POST /cloudstrgplugins.json
    def create
      @cloudstrgplugin = Cloudstrgplugin.new(params[:cloudstrgplugin])
  
      respond_to do |format|
        if @cloudstrgplugin.save
          format.html { redirect_to @cloudstrgplugin, notice: 'Cloudstrgplugin was successfully created.' }
          format.json { render json: @cloudstrgplugin, status: :created, location: @cloudstrgplugin }
        else
          format.html { render action: "new" }
          format.json { render json: @cloudstrgplugin.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /cloudstrgplugins/1
    # PUT /cloudstrgplugins/1.json
    def update
      @cloudstrgplugin = Cloudstrgplugin.find(params[:id])
  
      respond_to do |format|
        if @cloudstrgplugin.update_attributes(params[:cloudstrgplugin])
          format.html { redirect_to @cloudstrgplugin, notice: 'Cloudstrgplugin was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @cloudstrgplugin.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /cloudstrgplugins/1
    # DELETE /cloudstrgplugins/1.json
    def destroy
      @cloudstrgplugin = Cloudstrgplugin.find(params[:id])
      @cloudstrgplugin.destroy
  
      respond_to do |format|
        format.html { redirect_to cloudstrgplugins_url }
        format.json { head :no_content }
      end
    end
  end
end
