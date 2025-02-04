class AccessGroupsController < ApplicationController
  before_action :set_access_group, only: %i[ show edit update destroy ]

  # GET /access_groups or /access_groups.json
  def index
    @access_groups = AccessGroup.all
  end

  # GET /access_groups/1 or /access_groups/1.json
  def show
  end

  # GET /access_groups/new
  def new
    @access_group = AccessGroup.new
  end

  # GET /access_groups/1/edit
  def edit
  end

  # POST /access_groups or /access_groups.json
  def create
    @access_group = AccessGroup.new(access_group_params)

    respond_to do |format|
      if @access_group.save
        format.html { redirect_to @access_group, notice: "Access group was successfully created." }
        format.json { render :show, status: :created, location: @access_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @access_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access_groups/1 or /access_groups/1.json
  def update
    respond_to do |format|
      if @access_group.update(access_group_params)
        format.html { redirect_to @access_group, notice: "Access group was successfully updated." }
        format.json { render :show, status: :ok, location: @access_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @access_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access_groups/1 or /access_groups/1.json
  def destroy
    @access_group.destroy!

    respond_to do |format|
      format.html { redirect_to access_groups_path, status: :see_other, notice: "Access group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_group
      @access_group = AccessGroup.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def access_group_params
      params.expect(access_group: [ :name, :description ])
    end
end
